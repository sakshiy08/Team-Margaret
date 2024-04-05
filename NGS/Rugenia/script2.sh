#step 1: download dataset
#reference
Reference:
wget https://raw.githubusercontent.com/josoga2/yt-dataset/main/dataset/raw_reads/reference.fasta -O reference_genome/reference.fasta

ACBarrie
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R1.fastq.gz -O datasets/ACBarrie_R1.fastq.gz
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R2.fastq.gz -O datasets/ACBarrie_R2.fastq.gz


Alsen
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R1.fastq.gz -O datasets/Alsen_R1.fastq.gz
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R2.fastq.gz -O datasets/Alsen_R2.fastq.gz


Baxter
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R1.fastq.gz -O datasets/Baxter_R1.fastq.gz 
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R2.fastq.gz -O datasets/Baxter_R2.fastq.gz 

Chara
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R1.fastq.gz -O datasets/Chara_R1.fastq.gz 
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R2.fastq.gz -O datasets/Chara_R2.fastq.gz

Drysdale
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R1.fastq.gz -O datasets/Drysdale_R1.fastq.gz
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R2.fastq.gz -O datasets/Drysdale_R2.fastq.gz

#unzip all files
gzip -d datasets/*.fastq.gz


# Step 2: Quality Control with FastQC

fastqc datasets/ACBarrie_R1.fastq -o output_qc 
fastqc datasets/ACBarrie_R2.fastq -o output_qc 
fastqc datasets/Alsen_R1.fastq -o output_qc 
fastqc datasets/Alsen_R2.fastq -o output_qc 
fastqc datasets/Baxter_R1.fastq -o output_qc 
fastqc datasets/Baxter_R2.fastq -o output_qc 
fastqc datasets/Chara_R1.fastq -o output_qc 
fastqc datasets/Chara_R2.fastq -o output_qc 
fastqc datasets/Drysdale_R1.fastq -o output_qc 
fastqc datasets/Drysdale_R2.fastq -o output_qc 

# step3 trimming with fastp and repairing
mkdir trimmed
files=(
  "ACBarrie"
  "Alsen"
  "Baxter"
  "Chara"
  "Drysdale"
)
for file in "${files[@]}"; do
    	fastp -i "${file}_R1.fastq" -I "${file}_R2.fastq" -o "trimmed/${file}_R1_trimmed.fastq" -O "trimmed/${file}_R2_trimmed.fastq"
	repair.sh -Xmx14g "in1=${file}_R1.fastq" "in2=${file}_R2.fastq" "out1=${file}_R1_repaired.fastq" "out2=${file}_R2_repaired.fastq"
	
	#step 4: Genome mapping using BWA
	#--First create an index file for the reference genome with command below
 	bwa index reference_genome/Reference.fasta
	
	#create allignment
	bwa mem reference_genome/Reference.fasta "datasets/${file}_R1.fastq" "datasets/${file}_R2.fastq" > "allignment/${file}.sam"
	
	#convert sam file to bam file 
	samtools view -S -b "${file}.sam" > "${file}.bam"
	#sort bam files
	samtools sort "${file}.bam" -o "${file}_sorted.bam"   
	
	#step 5: Variant Calling
	bcftools mpileup -O b -o "variant/${file}.vcf" -f reference_genome/reference.fasta "allignment/${file}_sorted.bam" 
done


