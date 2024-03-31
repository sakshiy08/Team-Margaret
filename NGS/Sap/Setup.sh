#install forward strand zip file, reverse strand zip file, and reference genome

wget -O forwardstrand.fastq.gz "https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz?download=1"
wget -O reverserstrand.fastq.gz "https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz?download=1"
wget -O referencegenome.fa "https://zenodo.org/records/10886725/files/Reference.fasta?download=1"

#install fastqc for quality control
conda install -c bioconda fastqc

#install Trimmomatic for Trimming 
conda install -c bioconda trimmomatic

#install Fastp
conda install -c bioconda fastp

#install bwa for genome mapping
conda install -c bioconda bwa

#install samtools 
conda install -c bioconda samtools
