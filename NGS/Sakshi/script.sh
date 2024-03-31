mkdir pipeline && cd pipeline 

##Download dataset (wget)

wget -O forward.fastq.gz https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz?download=1
wget -O reverse.fastq.gz https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz?download=1
wget -O reference.fasta https://zenodo.org/records/10886725/files/Reference.fasta?download=1

##Quality Control (FastQC) 

fastqc forward.fastq.gz
fastqc reverse.fastq.gz
ls
google-chrome forward_fastqc.html 
google-chrome reverse_fastqc.html

##Trimming (FastP) 

fastp -i forward.fastq.gz -I reverse.fastq.gz -o trimmed_forward.fastq -O trimmed_reverse.fastq
ls
google-chrome fastp.html

##Genome Mapping (bwa) 
 
bwa index Reference.fasta 
bwa mem -M reference.fasta trimmed_forward.fastq trimmed_reverse.fastq > mapped_reads.sam
samtools view -S -b mapped_reads.sam > mapped_reads.bam 
samtools sort mapped_reads.bam -o sorted_mapped_reads.bam 



##Variant Calling (bcftools)

