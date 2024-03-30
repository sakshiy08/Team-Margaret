#!/bin/bash

#install bwa
conda install -c bioconda bwa

#install fastp
conda install -c bioconda fastp

#install fastqc
conda install -c bioconda fastqc

#install bcftools
conda install -c bioconda bcftools

#install samtools in bioenv
conda create --name bioenv && conda activate bioenv && conda install -c bioconda samtools

#install forward strand zip file, reverse strand zip file, and reference genome
wget -O forwardstrand.fastq.gz "https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz?download=1"

wget -O reverserstrand.fastq.gz "https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz?download=1"

wget -O referencegenome.fa "https://zenodo.org/records/10886725/files/Reference.fasta?download=1"

#unzip forwadstrand.fastq.gz and reverserstrand.fastq.gz using gunzip
gunzip forwardstrand.fastq.gz

gunzip reverserstrand.fastq.gz

#activate funtools
conda activate funtools


#perform quality control using fastqc
fastqc forwardstrand.fastq

fastqc reverserstrand.fastq

#perform trimming using fastp

fastp -i forwardstrand.fastq -I reverserstrand.fastq -o trimmed_forwardstrand.fastq -O trimmed_reverserstrand.fastq

#perform genome mapping using bwa
bwa index referencegenome.fa 

bwa mem -M referencegenome.fa trimmed_forwardstrand.fastq trimmed_reverserstrand.fastq > alignedreadings.sam

#conda install samtools in funtools environment
conda install -c bioconda samtools

#samtools use to view and sort data file in BAM
samtools view -S -b alignedreadings.sam > alignedreadings.bam

samtools sort alignedreadings.bam -o alignedreadings_sorted.bam

#conda install openblas to use bcftools with libopenblas packages
conda install -c anaconda openblas 

#variant calling using bcftools
bcftools mpileup -Ou -f referencegenome.fa alignedreadings_sorted.bam | bcftools call -mv -Ov -o variants.vcf

bcftools view variants.vcf
