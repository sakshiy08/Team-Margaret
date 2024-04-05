    1  ls
    2  mkdir ngs_pipeline
    3  cd ngs_pipeline
    4  mkdir datasets
    5  cd ~
    6  wget -O ngs_pipeline/datasets/Mycobaterium/err8774458_1.fastq.gz "https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz" && wget -O ngs_pipeline/datasets/Mycobaterium/err8774458_2.fastq.gz "https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz"
    7  cd ngs_pipeline/datasets
    8  cd ∼
    9  cd ~
   10  ls
   11  rm ngs_pipeline
   12  rm −r ngs_pipeline
   13  rm -r ngs_pipeline
   14  mkdir -p data/datasets
   15  cd data/datasets
   16  cd ~
   17  wget -O data/datasets/err8774458.fasta "https://zenodo.org/records/10886725/files/Reference.fasta"
   18  cd ~/data/datasets
   19  ls
   20  rm err8774458.fasta
   21  ls
   22  wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz
   23  wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz
   24  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R1.fastq.gz
   25  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R2.fastq.gz
   26  https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R1.fastq.gz
   27  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R1.fastq.gz
   28  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R2.fastq.gz
   29  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R1.fastq.gz
   30  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R2.fastq.gz
   31  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R1.fastq.gz
   32  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R2.fastq.gz
   33  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R1.fastq.gz
   34  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R2.fastq.gz
   35  ls
   36  cd ~
   37  mkdir -p results/fastqc results/fastp results/bwa results/bcf results
   38  sudo apt install fastqc
   39  sudo pip install fastp
   40  sudo apt install fastp
   41  sudo apt update
   42  sudo apt install bwa
   43  sudo apt install bcftools
   44  history
   45  sudo apt install samtools
   46  history
   47  nano setup.sh
   48  ls
   49  nano requirements.txt
   50  fastqc -o results/fastqc ~/data/datasets/*.fastq.qz
   51  cd  ~/data/datasets
   52  ls#
   53  ls
   54  ~/data/results
   55  cd ~
   56  cd results
   57  ls
   58  cd fastqc
   59  ls
   60  fastqc *.fastq.qz
   61  fastqc *.fastq.gz
   62  cd ~
   63  fastqc -o results/fastqc ~/data/datasets/*.fastq.qz 
   64  cd /home/mosopealabi/data/datasets
   65  ls *.fastq.gz
   66  cd ~
   67  fastqc data/datasets/*.fastq.gz -o results/fastqc results
   68  cd results/fastqc results && ls
   69  cd results/fastqc results
   70  cd results
   71  ls
   72  cd fastqc
   73  ls
   74  $ fastp -i ~/data/datasets/*_R1.fastq.gz -I ~/data/datasets/*_R2.fastq.gz -o ~/results/fastp/*_R1.fastq.gz -O ~/results/fastp/*_R2.fastq.gz
   75  sudo apt install fastp
   76  $ fastp -i ~/data/datasets/*_R1.fastq.gz -I ~/data/datasets/*_R2.fastq.gz -o ~/results/fastp/*_R1.fastq.gz -O ~/results/fastp/*_R2.fastq.gz
   77  fastp -i ~/data/datasets/*_R1.fastq.gz -I ~/data/datasets/*_R2.fastq.gz -o ~/results/fastp/*_R1.fastq.gz -O ~/results/fastp/*_R2.fastq.gz
   78  cd results/fastp
   79  ls
   80  nano '*_R2.fastq.gz'
   81  nano fastp_analysis
   82  cat fastp_analysis
   83  nano trim.sh
   84  bash trim.sh
   85  nano trim.sh
   86  nano fastptrim.sh
   87  bash fastptrim.sh
   88  fastp -i ~/data/datasets/err8774458_1.fastq -I ~/data/datasets/err8774458_2.fastq -o ~/results/fastp/trimmed_forward.fastq -O ~/results/fastp/trimmed_reverse.fastq
   89  cd ~
   90  cd datasets
   91  cd data
   92  cd datasets
   93  ls
   94  cd ~
   95  fastp -i ~/data/datasets/ERR8774458_1.fastq.gz -I ~/data/datasets/ERR8774458_2.fastq.gz -o ~/results/fastp/trimmed_forward.fastq -O ~/results/fastp/trimmed_reverse.fastq
   96  mv fastp.html fastp.json ~/results/fastp/
   97  fastqc -o results/fastqc ~/results/fastp/trimmed_forward.fastq ~/results/fastp/trimmed_reverse.fastq
   98  wget -O data/datasets/err8774458.fasta "https://zenodo.org/records/10886725/files/Reference.fasta"
   99  cd data/datasets
  100  ls
  101  cd ~
  102  bwa index ~/data/datasets/err8774458.fasta
  103  bwa mem ~/data/datasets/err8774458.fasta ~/results/fastp/trimmed_forward.fastq ~/results/fastp/trimmed_reverse.fastq > ~/results/bwa/err8774458.sam
  104  samtools view -S -b ~/results/bwa/err8774458.sam > ~/results/bwa/err8774458.bam
  105  samtools sort -o ~/results/bwa/err8774458.sorted.bam ~/results/bwa/err8774458.bam
  106  samtools flagstat ~/results/bwa/err8774458.sorted.bam
  107  bcftools mpileup -O b -o ~/results/bcf/err8774458.bcf -f ~/data/datasets/err8774458.fasta ~/results/bwa/err8774458.sorted.bam
  108  bcftools call --ploidy 1 -m -v -o ~/results/bcf/err8774458_variants.vcf ~/results/bcf/err8774458.bcf
  109  vcfutils.pl varFilter ~/results/bcf/err8774458_variants.vcf  > ~/results/bcf/err8774458_final_variants.vcf
  110  grep -v "#" ~/results/bcf/err8774458_final_variants.vcf | wc -l
  111  samtools index ~/results/bwa/err8774458.sorted.bam
