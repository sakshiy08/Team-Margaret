#!/bin/bash

#Create directories to run the pipeline
echo "Create directories..."
mkdir ngs_pipeline && cd ngs_pipeline
mkdir data
mkdir data/fastq
mkdir data/ref
cd data

#Download the data
echo "Downloading the data..."
wget -P data/fastq https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz
wget -P data/fastq https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz
wget -P data/ref https://zenodo.org/records/10886725/files/Reference.fasta
rename 's/old-name/new-name/' files

#Quality control
echo "Performing quality control..."
fastqc data/fastq/*.fastq.gz
ls fastq

#Fastp
echo "Running fastp for trimming..."
fastp -i data/fastq/ERR8774458_1.fastq.gz -o data/fastq/ERR8774458_1_trimmed.fastq.gz
fastp -i data/fastq/ERR8774458_2.fastq.gz -o data/fastq/ERR8774458_2_trimmed.fastq.gz

#Quality control 2
echo "Running quality control again after trimming..."
fastqc data/fastq/*trimmed.fastq.gz
        
#MutiQC step
echo "Running MultiQC..."
multiqc data/fastq/*_fastqc.zip
multiqc data/fastq/*trimmed_fastqc.zip

#read mapping
echo "indexing reference genome..."
ls ref
bwa index data/ref/Reference.fasta

echo "Performing genome mapping using BWA mem..."
mkdir data/BAMS
bwa mem data/ref/Reference.fasta data/fastq/ERR8774458_1_trimmed.fastq.gz data/fastq/ERR8774458_2_trimmed.fastq.gz > data/BAMS/mapped_reads.sam

#SAM to BAM
echo "Converting SAM to BAM"
samtools view -S -b data/BAMS/mapped_reads.sam > data/BAMS/mapped_reads.bam

#Sort BAM file
echo "Sorting BAM file..."
samtools sort data/BAMS/mapped_reads.bam -o data/BAMS/mapped_reads.sorted.bam

#Print stats about mapped and sorted reads
echo "Printing stats about mapped and sorted reads..."
samtools flagstat data/BAMS/mapped_reads.sorted.bam

#index sorted BAM file
samtools index data/BAMS/mapped_reads.sorted.bam

echo "Variant calling using bcftools..."
mkdir data/VC
bcftools mpileup -Ou -f data/ref/Reference.fasta data/BAMS/mapped_reads.sorted.bam | bcftools call -mv -Ov -o data/VC/variants.vcf

#basic statistics
echo "Counting the number of variants..."
grep -v -c ‘^#’ data/VC/variants.vcf

echo "Counting the number of SNPs..."
bcftools view -v snps data/VC/variants.vcf | grep -v -c ‘^#’

echo "Counting the number of indels (insertions and deletions)..."
bcftools view -v indels data/VC/variants.vcf | grep -v -c ‘^#’

echo "NGS pipeline has been completed successfully."











