#Dowmload the Dataset

wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz?download=1
wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz?download=1
wget https://zenodo.org/records/10886725/files/Reference.fasta?download=1
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

##reference genome
wget https://raw.githubusercontent.com/josoga2/yt-dataset/main/dataset/raw_reads/reference.fasta  


mv  ERR8774458_1.fastq.gz?download=1 ERR8774458.fastq.gz
mv ERR8774458_2.fastq.gz?download=1 ERR8774458_2.fastq.gz
mv ERR8774458.fastq.gz ERR8774458_1.fastq.gz

#Quality Control

mkdir -p qcoutput && fastqc *.fastq.gz -o qcoutput/

#Trimming

for file in *fastq.gz; do
    fastp -i $file -I ${file/R1/R2} -o trimmed_$(basename $file) -O trimmed_$(basename ${file/R1/R2})
done

#Genome Mapping

bwa index reference.fasta 
for file in trimmed_*; do     
bwa mem -M reference.fasta ${file} ${file/R1/R2} > $(basename ${file/.fastq.gz/.sam}); 
done

#Activate Samtools 
conda activate samtools_env

#SAM file to a sorted and indexed BAM file

for file in *.sam; do
samtools view -S -b $file | samtools sort -o $(basename ${file/.sam/.sorted.bam})
done

#Variant Calling(freebayes tool)

for file in *.sorted.bam; do
    bcftools mpileup -Ou -f reference.fasta $file | bcftools call -Ov -mv -o $(basename ${file/.sorted.bam/.vcf})
done

