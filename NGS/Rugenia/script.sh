#step 1: download dataset
wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz
wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz
#unzip the FASTQ files unzip using 
gzip -d ERR8774458_1.fastq.gz
gzip -d ERR8774458_2.fastq.gz

# Step 2: Quality Control with FastQC

fastqc new_dataset/ERR8774458_1.fastq -o output_report #quality report for ERR8774458_1
fastqc new_dataset/ERR8774458_2.fastq -o output_report #quality report for ERR8774458_2

#step 3: Trimming with fastP
#first make a script file called "trim.sh" then input the command below

mkdir trimmed
files=("ERR8774458")

for file in "${files[@]}"; do
    fastp -i "${file}_1.fastq" -I "${file}_2.fastq" -o "trimmed/${file}_1_trimmed.fastq" -O "trimmed/${file}_2_trimmed.fastq"
donee

#step 4: Genome mapping using BWA
#--First create an index file for the reference genome with command below
bwa index reference_genome/Reference.fasta

#create an allignment using
bwa mem reference_genome/Reference.fasta trimmed/ERR8774458_1_trimmed.fastq  trimmed/ERR8774458_2_trimmed.fastq > allignment/ERR8774458.sam

#convert sam file to bam file 
samtools view -S -b ERR8774458.sam > ERR8774458.bam

#step 5: Variant Calling with bcftools
#first sort the bam file with command 
samtools sort -o allignment/ERR8774458_sorted.bam allignment/ERR8774458.bam or 
samtools sort allignment/ERR8774458.bam -o allignment/ERR8774458_sorted.bam 

#then run the command below
bcftools mpileup -O b -o variant/bcf/ERR8774458.vcf -f reference_genome/Reference.fasta allignment/ERR8774458_sorted.bam

done

