#!/bin/bash

#Create directory for Project3 and access Project3 directory
mkdir Project3 && cd Project3

#Update and upgrade sudo apt
sudo apt update
sudo apt upgrade

#install fastqc
sudo apt install fastqc

#install bwa
sudo apt install bwa

#install bcftools and samtools
sudo apt install bcftools samtools

#install fastp
sudo apt install fastp



# Create double folders for quality control, trimming, and genome mapping alignment outputs

mkdir QC_output1 && mkdir trim_output1 && mkdir GMap_output1 && mkdir QC_output2 && mkdir trim_output2 && mkdir GMap_output2 


#create two folders for reference dataset for the first dataset and the new one (Ref1 and Ref2)
mkdir Ref1 && mkdir Ref2


#check content
ls



#Download reference dataset 
wget https://zenodo.org/records/10886725/files/Reference.fasta 

#view Reference.fasta’s content
less Reference.fasta

#Download initial Forward and Reverse datasets to be analyzed 

wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz 

wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz


#Check content to make sure the files are installed
ls

#To run fastqc for quality control for the first two datasets
fastqc *.fastq.gz

#Check content 
ls

#Download fastqc files to computer and access the HTML using chrome to view FastQC Report



#Perform Trimming for the dataset
fastp -i *_1.fastq.gz -I *_2.fastq.gz -o trimmedForward1.fastq -O trimmedReverse2.fastq --qualified_quality_phred 20 --html report.html --json report.json

#Check content
ls -lh

#Index Reference genome
bwa index -a bwtsw Reference.fasta

#Use BWA to map trimmed outputs to Reference.fasta and generate a SAM file output
bwa mem Reference.fasta trimmedForward1.fastq trimmedReverse2.fastq > Aligned_ERR8774458.sam

#Convert SAM to BAM file
samtools view -hbo Aligned_ERR8774458.bam Aligned_ERR8774458.sam

#Check content
ls -lh

#Sort BAM file
samtools sort Aligned_ERR8774458.bam -o ERR8774458.sorted.bam

# Index sorted BAM file for later VC access
samtools index ERR8774458.sorted.bam

#Check content for sorted.bam and .bai files
ls -lh

#Perform variant calling using bcftools on sorted BAM file
samtools index ERR8774458.sorted.bam

# Create new folder for Initial Forward & Reverse strand data set to be stored
mkdir InitialFASTQ_Dataset
 
Move each step’s output into the matching output folder 
mv trimmedForward1.fastq trim_output1/

mv trimmedReverse2.fasq trim_output1/

mv Reference.fasta Ref1/

mv ERR8774458_1_fastqc.zip ERR8774458_2_fastqc.zip ERR8774458_2_fastqc.html ERR8774458_1_fastqc.html

mv ERR8774458_1.fastq.gz ERR8774458_2.fastq.gz InitialFASTQ_Dataset/

mv ERR8774458.vcf VC_output1/

mv Reference.fasta.amb Reference.fasta.ann Reference.fasta.bwt Reference.fasta.fai Reference.fasta.pac Reference.fasta.sa Aligned_ERR8774458.bam Aligned_ERR8774458.sam ERR8774458.sorted.bam ERR8774458.sorted.bam.bai GMap_output1/




#Install second reference dataset and name as “ReferenceNEW.fasta”
wget -O ReferenceNEW.fasta “https://raw.githubusercontent.com/josoga2/yt-dataset/main/dataset/raw_reads/reference.fasta”

#view ReferenceNEW.fasta’s content
less ReferenceNEW.fasta

#Download (ACBarrie; Alsen; Baxter; Chara; Drysdale) datasets in pairs to be analyzed
wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R1.fastq.gz && wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R2.fastq.gz

wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R1.fastq.gz && wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R2.fastq.gz

wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R1.fastq.gz && wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R2.fastq.gz

wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R1.fastq.gz && wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R2.fastq.gz

wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R1.fastq.gz && wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R2.fastq.gz

#Check content to make sure the fastq files are downloaded

ls *.fastq.gz

#Run fastqc for the new datasets
fastqc *.fastq.gz

#Check output of fastqc files presence
ls *.html
ls *.zip


#Download fastqc files to computer and access the HTML using chrome to view FastQC Report



#Perform Trimming for the dataset using Fastp and for loop
nano trimming.sh

#inside trimming.sh write the for loop script 
#!/bin/bash
mkdir trim_output2
SAMPLES=(
  "ACBarrie"
  "Alsen"
  "Baxter"
  "Chara"
  "Drysdale"
)

for SAMPLE in "${SAMPLES[@]}"; do

  fastp \
    -i "$PWD/${SAMPLE}_R1.fastq.gz" \
    -I "$PWD/${SAMPLE}_R2.fastq.gz" \
    -o "trim_output2/${SAMPLE}_R1.fastq.gz" \
    -O "trim_output2/${SAMPLE}_R2.fastq.gz" \
    --html "trim_output2/${SAMPLE}_fastp.html" 
done

# CTRL + O to save script, then CTRL + X to exit

#Execute the trimming.sh using bash
bash trimming.sh

#Check content and the content of trim_output2 file,  then step out
cd trim_output2
ls
cd ..

#Index new reference genome for genome mapping step
bwa index -a bwtsw ReferenceNEW.fasta

#Move trimmed files to folder where reference is indexed 
cd.. 
mv Project3/trim_output2/* Project3/
cd Project3
ls


#Use BWA to map trimmed outputs one by one in trim_output2 to ReferenceNEW.fasta and generate a SAM file output

bwa mem ReferenceNEW.fasta ACBarrie_R1.fastq.gz ACBarrie_R2.fastq.gz > Aligned_ACBarrie.sam 

bwa mem ReferenceNEW.fasta Alsen_R1.fastq.gz Alsen_R2.fastq.gz > Aligned_Alsen.sam
 
bwa mem ReferenceNEW.fasta Baxter_R1.fastq.gz Baxter_R2.fastq.gz > Aligned_Baxter.sam 

bwa mem ReferenceNEW.fasta Chara_R1.fastq.gz Chara_R2.fastq.gz > Aligned_Chara.sam 

bwa mem ReferenceNEW.fasta Drysdale_R1.fastq.gz Drysdale_R2.fastq.gz > Aligned_Drysdale.sam 


#Convert SAM to BAM file
samtools view -hbo Aligned_ACBarrie.bam Aligned_ACBarrie.sam

samtools view -hbo Aligned_Alsen.bam Aligned_Alsen.sam

samtools view -hbo Aligned_Baxter.bam Aligned_Baxter.sam

samtools view -hbo Aligned_Chara.bam Aligned_Chara.sam

samtools view -hbo Aligned_Drysdale.bam Aligned_Drysdale.sam


#Check content
ls -lh


#Sort BAM file
samtools sort Aligned_ACBarrie.bam -o ACBarrie.sorted.bam

samtools sort Aligned_Alsen.bam -o Alsen.sorted.bam

samtools sort Aligned_Baxter.bam -o Baxter.sorted.bam

samtools sort Aligned_Chara.bam -o Chara.sorted.bam

samtools sort Aligned_Drysdale.bam -o Drysdale.sorted.bam


# Index sorted BAM file for later VC access
samtools index ACBarrie.sorted.bam

samtools index Alsen.sorted.bam

samtools index Baxter.sorted.bam

 samtools index Chara.sorted.bam

samtools index Drysdale.sorted.bam


#Check content for sorted.bam and .bai files
ls -lh

#Perform variant calling using bcftools on sorted BAM file with for loop
nano VC.sh

#inside VC.sh write the for loop script
#!/bin/bash

BAM_FILES=(
    "ACBarrie.sorted.bam"
    "Alsen.sorted.bam"
    "Baxter.sorted.bam"
    "Chara.sorted.bam"
    "Drysdale.sorted.bam"
)


for BAM_FILE in "${BAM_FILES[@]}"; do

    VCF_FILE="${BAM_FILE%.sorted.bam}.vcf"

    bcftools mpileup -Ou -f ReferenceNEW.fasta "$BAM_FILE" | bcftools call -mv -Ov -o "$VCF_FILE"

    bcftools index "$VCF_FILE"
done

# CTRL + O to save then CTRL + X to exit VC.sh

#Execute VC.sh with bash
bash VC.sh

#Check content to make sure vcf files are there
ls

#Move files to their corresponding folders
mv ReferenceNEW.fasta.amb ReferenceNEW.fasta.ann ReferenceNEW.fasta.bwt ReferenceNEW.fasta.fai ReferenceNEW.fasta.pac ReferenceNEW.fasta.sa GMap_output2/

mv *.fastq.gz trim_output2/

mv fastp.json trim_output2/ 

mv ReferenceNEW.fasta Ref2/ 

mv *.html trim_output2/

mv *.bai GMap_output2

mv *.bam GMap_output2/ && mv *.sam GMap_out 

mkdir VC_output2

mv *.vcf VC_output2/

