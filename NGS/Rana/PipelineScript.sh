#Setting up the workspace
#downloading the datasets

$ mkdir dataset
$ cd dataset
$ mkdir raw_data && cd raw_data
$ wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R1.fastq.gz
$ wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R2.fastq.gz
$ wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R1.fastq.gz
$ wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R2.fastq.gz
$ wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R1.fastq.gz
$ wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R2.fastq.gz
$ wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R1.fastq.gz
$ wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R2.fastq.gz
$ wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R1.fastq.gz
$ wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R2.fastq.gz
$ cd ..
$ ls
$ cd ..
$ ls
$ mkdir QCR
$ ls
$ ls raw_data/

#Quality Control Fastqc
$ fastqc raw_data/*.fastq.gz -o QCR

#MultiQC
$ multiqc QCR/

#Trimming with Fastp (If needed )
$ vim trimming.sh
$ cp trimming.sh raw_data/

$ cd raw_data
$ ls
$ bash trimming.sh 
$ mv qc_reads/ Trimmed

#Repairing
$ mkdir repaired
$ for f1 in *_R1.fastq.gz; do
  f2="${f1%_R1.fastq.gz}_R2.fastq.gz"
  repairdir="repaired"  # Define the directory name here
  mkdir -p "$repairdir"  # Create the "repaired" directory if it doesn't exist
  repair.sh in1="$f1" in2="$f2" out1="$repairdir/${f1%.gz}_repaired_R1.fastq.gz" out2="$repairdir/${f2%.gz}_repaired_R2.fastq.gz" outs="$repairdir/${f1%.gz}_singletons.fastq.gz" repair=t
done


#Genome Mapping 
## indexing
$ cd ..
$ bwa index Ref/reference.fasta

## mem and from SAM to BAM using Samtools
for f1 in *_R1.fastq.gz; do
  f2="${f1%_R1.fastq.gz}_R2.fastq.gz"
  bwa mem ../Ref/reference.fasta "$f1" "$f2" | samtools view -Sb - > "${f1%.gz}.bam"
done

## sort
$ for f in *.bam; do
  sorted_bam="${f%.bam}.sorted.bam"  # Create the sorted BAM filename
  samtools sort "$f" "$sorted_bam"
done

## statistical report
for f in *.bam; do
  samtools flagstat "$f"
done

## Variant calling using bcftools
$ for file in bam/*.sorted.bam; do
    bcftools mpileup -Ou -f download/reference.fasta "$file" | bcftools call -mv -Ov -o "vcf/$(basename "${file/.sorted.bam/.vcf}")"
done

