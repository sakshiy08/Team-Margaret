  460  mkdir Dataset && cd Dataset
  461  wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz?download=1
  462  wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz?download=1
  463  ls
  464  mv 'ERR8774458_1.fastq.gz?download=1' Forward.fastq.gz && mv 'ERR8774458_2.fastq.gz?download=1' Reverse.fastq.gz
  465  ls
  466  gunzip Forward.fastq.gz && gunzip Reverse.fastq.gz
  467  cd ..
  468  mkdir Ref
  469  cd Ref
  470  wget https://zenodo.org/records/10886725/files/Reference.fasta?download=1
  471  ls
  472  mv 'Reference.fasta?download=1' Reference.fasta
  473  cd ..
  474  mkdir QC_Reports
  475  fastqc Dataset/Forward.fastq -o QC_Reports/
  476  fastqc Dataset/Reverse.fastq -o QC_Reports/
  477  multiqc QC_Reports/
  478  mkdir Trimmed
  479  ls Dataset/
  480  fastp -i Dataset/Forward.fastq -I Dataet/Reverse.fastq -o Trimmed/Trimmed_Forward.fastq -O Trimmed/Trimmed_Reverse.fastq
  481  fastp -i Dataset/Forward.fastq -I Dataset/Reverse.fastq -o Trimmed/Trimmed_Forward.fastq -O Trimmed/Trimmed_Reverse.fastq
  482  cd Trimmed
  483  ls
  484  fastqc Trimmed_Forward.fastq
  485  fastqc Trimmed_Reverse.fastq
  486  cd ..
  487  ls
  488  cd Ref
  489  ls
  490  bwa index Reference.fasta 
  491  cd ..
  492  ls Trimmed/
  493  bwa mem Ref/Reference.fasta Trimmed/Trimmed_Forward.fastq Trimmed/Trimmed_Reverse.fastq > aligned.sam
  494  samtools view -S -b aligned.sam > aligned.bam
  495  samtools sort -o aligned.sorted.bam aligned.bam
  496  samtools flagstat aligned.sorted.bam
  497  mkdir results && cd results
  498  mkdir bcf
  499  cd ..
  500  bcftools mpileup -O b -o results/bcf/SRR2584866_raw.bcf -f Ref/Reference.fasta aligned.sorted.bam
  501  bcftools call --ploidy 1 -m -v -o results/vcf/SRR2584866_variants.vcf results/bcf/SRR2584866_raw.bcf
  502  vcfutils.pl varFilter results/vcf/SRR2584866_variants.vcf  > results/vcf/SRR2584866_final_variants.vcf
  503  less -S results/vcf/SRR2584866_final_variants.vcf
  504  history > Rana_NGS.sh
