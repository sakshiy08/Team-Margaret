    1  truncate -s 0 ~/.bash_history
    2  clear
    3  history
    4  ls
    5  mkdir -p ~/miniconda3
    6  wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
    7  bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
    8  source ~/.bashrc
    9  nano ~/.bashrc
   10  source ~/.bashrc
   11  conda init
   12  conda activate base
   13  conda create --name funtools
   14  conda activate funtools
   15  conda install -c bioconda bwa
   16  conda install -c bioconda bcftools
   17  conda install -c bioconda fastp
   18  conda install -c bioconda fastqc
   19  fastqc --version
   20  conda create --name bioenv && conda activate bioenv && conda install -c bioconda samtools
   21  ls
   22  cd
   23  ls
   24  wget -O forwardstrand.fastq.gz "https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz?download=1"
   25  wget -O reverserstrand.fastq.gz "https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz?download=1"
   26  wget -O referencegenome.fa "https://zenodo.org/records/10886725/files/Reference.fasta?download=1"
   27  gunzip forwardstrand.fastq.gz 
   28  gunzip reversestrand.fastq.gz
   29  gunzip reverserstrand.fastq.gz
   30  ls
   31  fastqc forwardstrand.fastq
   32  pwd
   33  ls -l
   34  conda activate funtools
   35  fastqc forwardstrand.fastq
   36  ls
   37  fastqc reverserstrand.fastq
   38  fastp -i forwardstrand.fastq -I reverserstrand.fastq -o trimmed_forwardstrand.fastq -O trimmed_reverserstrand.fastq
   39  ls
   40  bwa index referencegenome.fa
   41  bwa mem -M referencegenome.fa trimmed_forwardstrand.fastq trimmed_reverserstrand.fastq > alignedreadings.sam
   42  samtools view -S -b alignedreadings.sam > alignedreadings.bam
   43  samtools --version
   44  conda install -c bioconda samtools --no-download-deps
   45  conda install -c bioconda samtools
   46  samtools view -S -b alignedreadings.sam > alignedreadings.bam
   47  samtools sort alignedreadings.bam -o alignedreadings_sorted.bam
   48  bcftools mpileup -Ou -f referencegenome.fa alignedreadings_sorted.bam | bcftools call -mv -Ov -o variants.vcf
   49  conda install -c bioconda bcftools
   50  bcftools mpileup -Ou -f referencegenome.fa alignedreadings_sorted.bam | bcftools call -mv -Ob -o variants.
   51  bcf
   52  bcftools mpileup -Ou -f referencegenome.fa alignedreadings_sorted.bam | bcftools call -mv -Ov -o variants.
   53  vcf
   54  echo $LD_LIBRARY_PATH
   55  conda install -c anaconda libopenblas-devel
   56  conda search openblas
   57  conda install -c anaconda openblas
   58  bcftools mpileup -Ou -f referencegenome.fa alignedreadings_sorted.bam | bcftools call -mv -Ov -o variants.vcf
   59  bcftools view variants.vcf
   60  fastqc --version
   61  fastp --version
   62  samtools --version
   63  bcftools --version
   64  bwa --version
   65  openblas --version
   66  nano requirement.txt
   67  history
   68  nano pipelinescript.sh
   69  nanp pipelinescript.sh
   70  nano pipelinescript.sh
   71  history > pipelinescript.sh
