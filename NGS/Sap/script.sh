#Dowmload the Dataset

wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz?download=1
wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz?download=1
wget https://zenodo.org/records/10886725/files/Reference.fasta?download=1

mv  ERR8774458_1.fastq.gz?download=1 ERR8774458.fastq.gz
mv ERR8774458_2.fastq.gz?download=1 ERR8774458_2.fastq.gz
mv ERR8774458.fastq.gz ERR8774458_1.fastq.gz

#Quality Control

fastqc ERR8774458_1.fastq.gz ERR8774458_2.fastq.gz

#Trimming

trimmomatic PE -phred33 ERR8774458_1.fastq.gz ERR8774458_2.fastq.gz     ERR8774458_1.trimmed.fastq.gz ERR8774458_1.unpaired.fastq.gz     ERR8774458_2.trimmed.fastq.gz ERR8774458_2.unpaired.fastq.gz     ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
#Genome Mapping

bwa
bwa index Reference.fasta?download=1
bwa mem Reference.fasta?download=1 ERR8774458_1.trimmed.fastq.gz ERR8774458_2.trimmed.fastq.gz > aligned_reads.sam

conda env list
conda activate samtools_env

#SAM file to a sorted and indexed BAM file

samtools view -b -o aligned_reads.bam aligned_reads.sam
samtools sort -o aligned_reads.sorted.bam aligned_reads.bam
samtools index aligned_reads.sorted.bam

#Variant Calling(freebayes tool)

conda install -c bioconda freebayes
freebayes -f Reference.fasta?download=1 aligned_reads.sorted.bam > variants.vcf
