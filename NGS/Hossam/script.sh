#!/bin/bash

# Create directories 
echo 'Creating directories...'
mkdir -p download
mkdir -p qc1
mkdir -p trim
mkdir -p qc2
mkdir -p mapping
mkdir -p bam
mkdir -p vcf

# Download reference genome
echo 'Downloading reference genome...'
wget https://raw.githubusercontent.com/josoga2/yt-dataset/main/dataset/raw_reads/reference.fasta -P download/

# Download datasets
echo 'Downloading datasets...'
wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz -P download/
wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz -P download/
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R1.fastq.gz -P download/
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R2.fastq.gz -P download/
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R1.fastq.gz -P download/
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R2.fastq.gz -P download/
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R1.fastq.gz -P download/
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R2.fastq.gz -P download/
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R1.fastq.gz -P download/
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R2.fastq.gz -P download/
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R1.fastq.gz -P download/
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R2.fastq.gz -P download/

# Quality control using FastQC
echo "Performing quality control..."
fastqc download/*.fastq.gz -o qc1/

# Trimming using FastP
echo "Running fastp for trimming..."
for file in download/*1.fastq.gz; do
    fastp -i "$file" -I "${file/1/2}" -o "trim/trimmed_$(basename "$file")" -O "trim/trimmed_$(basename "${file/1/2}")"
done

# Quality control again after trimming using FastQC
echo "Running quality control again after trimming..."
fastqc trim/*.fastq.gz -o qc2/

# Genome mapping using BWA
echo "indexing reference genome..."
bwa index download/reference.fasta

echo "Performing genome mapping using BWA mem..."
for file in trim/*.fastq.gz; do
    bwa mem download/reference.fasta "${file}" "${file/1/2}" > "mapping/$(basename "${file/.fastq.gz/.sam}")"
done

# Convert SAM to BAM and sort using SAMtools
echo "Converting SAM to BAM & sorting BAM file..."
for file in mapping/*.sam; do
    samtools view -bS "$file" | samtools sort -o "bam/$(basename "${file/.sam/.sorted.bam}")"
done

# Variant calling using BCFtools
echo "Variant calling using BCFtools..."
for file in bam/*.sorted.bam; do
    bcftools mpileup -Ou -f download/reference.fasta "$file" | bcftools call -mv -Ov -o "vcf/$(basename "${file/.sorted.bam/.vcf}")"
done
