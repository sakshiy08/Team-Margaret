  106  cd project3
  107  wget -O forward_strand.fastq.gz https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz
  108  ls
  109  wget -O reverse_strand.fastq.gz https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz
  110  wget -O reference.fasta https://zenodo.org/records/10886725/files/Reference.fasta
  111  ls
  112  fastqc forward_strand.fastq.gz
  113  ls
  114  fastqc reverse_strand.fastq.gz
  115  ls
  116  mkdir fastqc_reports
  117  mv forward_strand_fastqc.html forward_strand_fastqc.zip reverse_strand_fastqc.html reverse_strand_fastqc.zip > cd fastqc_reports
  118  ls
  119  mkdir fastp_reports
  120  miltiqc fastqc_reports
  121  sudo apt install multiqc
  122  ls
  123  fastp -i forward_strand.fastq.gz -I reverse_strand.fastq.gz -o trimmed_forward.fastq -O trimmed_reverse.fastq > cd fastp_reports
  124  ls
  125  cd fastp_reports
  126  ls
  127  cd ..
  128  bwa index reference.fasta
  129  ls
  130  bwa mem reference.fasta trimmed_forward.fastq trimmed_reverse.fastq > mapped.sam
  131  ls
  132  samtools view -bS mapped.sam > mapped.bam
  133  samtools sort -o mapped.bam sorted_mapped.bam
  134  samtools sort mapped.bam -o sorted_mapped.bam
  135  samtools flagstat sorted_mapped.bam
  136  ls
  137  bcftools mpileup -O b reference.fasta sorted_mapped.bam
  138  bcftools mpileup -O b -f reference.fasta sorted_mapped.bam
  139  bcftools mpileup -O b -o results/bcf/SRR2584866_raw.bcf -f reference.fasta sorted_mapped.bam
  140  bcftools mpileup -O b -o SRR2584866_raw.bcf -f reference.fasta sorted_mapped.bam
  141  bcftools mpileup -Ou -f reference.fasta sorted_mapped.bam
  142  bcftools mpileup -Ou -f <reference.fasta> sorted_mapped.bam
  143  sudo apt install bcftools
  144  bcftools mpileup -O b -f reference.fasta sorted_mapped.bam
  145  bcftools mpileup -Ou -f <reference.fasta> sorted_mapped.bam
  146  bcftools mpileup -O b -o SRR2584866_raw.bcf -f reference.fasta sorted_mapped.bam
  147  bcftools mpileup -Ou -f reference.fasta sorted_mapped.bam | bcftools call -mv -Ov -o variants.vcf
  148  conda install -c bioconda bcftools
  149  conda install -c anaconda libopenblas-devel
  150  echo $LD_LIBRARY_PATH
  151  conda install -c anaconda libopenblas-devel
  152  sudo apt install libopenblas-devel
  153  sudo apt install openblas
  154  conda install -c anaconda openblas
  155  bcftools mpileup -O b -f reference.fasta sorted_mapped.bam
  156  bcftools mpileup -Ou -f reference.fasta sorted_mapped.bam
  157  bcftools mpileup -Ou -f reference.fasta sorted_mapped.bam | bcftools call -mv -Ov -o variants.vcf
  158  conda install -c anaconda libcrypto
  159  conda install -c anaconda libcrypto.so
  160  openssl version
  161  sudo find / -name "libcrypto.so.1.0.0"
  162  sudo ln -s /snap/core18/2812/usr/lib/x86_64-linux-gnu/libcrypto.so.1.0.0 /usr/lib/libcrypto.so.1.0.0
  163  sudo find / -name "libcrypto.so.1.0.0"
  164  sudo ln -s /snap/core18/2812/usr/lib/x86_64-linux-gnu/libcrypto.so.1.0.0 /usr/lib/libcrypto.so.1.0.0
  165  export LD_LIBRARY_PATH=/usr/lib/libcrypto.so.1.0.0:$LD_LIBRARY_PATH
  166  bcftools mpileup -Ou -f reference.fasta sorted_mapped.bam | bcftools call -mv -Ov -o variants.vcf
  167  ls
  168  bcftools view variants.vcf
  169  vcfutils.pl varFilter variants.vcf  > final_variants.vcf
  170  less -S final_variants.vcf
  171  history
  172  history 67
  173  history 68 > pipelinescript.sh
