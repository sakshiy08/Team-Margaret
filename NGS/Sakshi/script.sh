mkdir pipeline && cd pipeline 

##Download dataset (wget)

wget https://raw.githubusercontent.com/josoga2/yt-dataset/main/dataset/raw_reads/reference.fasta  ##reference genome

wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R1.fastq.gz
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R2.fastq.gz
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R1.fastq.gz
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R2.fastq.gz 
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R1.fastq.gz 
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R2.fastq.gz 
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R1.fastq.gz 
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R2.fastq.gz 
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R1.fastq.gz 
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R2.fastq.gz 

##Quality Control (FastQC) 

mkdir -p qcoutput && fastqc *.fastq.gz -o qcoutput/

##Trimming (FastP) 

nano trim.sh 
#!/bin/bash
for file in *R1.fastq.gz; do
    fastp -i $file -I ${file/R1/R2} -o trimmed_$(basename $file .gz) -O trimmed_$(basename ${file/R1/R2} .gz)
done
chmod +x trim.sh
./trim.sh 

##Genome Mapping (bwa) 

bwa index reference.fasta 
bwa mem -M reference.fasta trimmed_forward.fastq trimmed_reverse.fastq > mapped_reads.sam
samtools view -S -b mapped_reads.sam > mapped_reads.bam 
samtools sort mapped_reads.bam -o sorted_mapped_reads.bam 

##Variant Calling (bcftools)

bcftools mpileup -Ou -f reference.fasta sorted_mapped_reads.bam | bcftools call -Ov -mv -o variants.vcf
bcftools view variants.vcf
