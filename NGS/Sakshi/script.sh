mkdir pipeline && cd pipeline 

##Download dataset (wget)

wget https://raw.githubusercontent.com/josoga2/yt-dataset/main/dataset/raw_reads/reference.fasta  ##reference genome

##raw sequencing reads
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

for file in *R1.fastq.gz; do
    fastp -i $file -I ${file/R1/R2} -o trimmed_$(basename $file) -O trimmed_$(basename ${file/R1/R2})
done

##Genome Mapping (bwa) 

bwa index reference.fasta 

for file in trimmed_*; do
    bwa mem -M reference.fasta ${file} ${file/R1/R2} > $(basename ${file/.fastq.gz/.sam})
done

##Conversion of SAM to BAM and sorting (SAMtools)

for file in *.sam; do
    samtools view -S -b $file | samtools sort -o $(basename ${file/.sam/.sorted.bam})
done


##Variant Calling (bcftools)

for file in *.sorted.bam; do
    bcftools mpileup -Ou -f reference.fasta $file | bcftools call -Ov -mv -o $(basename ${file/.sorted.bam/.vcf})
done
