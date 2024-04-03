# wget to download dataset
wget -O forward_strand.fastq.gz "https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz"
wget -O reverser_strand.fastq.gz "https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz"
wget -O reference.fasta "https://zenodo.org/records/10886725/files/Reference.fasta"

# install fastqc
conda install -c bioconda fastqc

# install fastp
conda install -c bioconda fastp

# install bwa
conda install -c bioconda bwa

# install samtools 
conda install -c bioconda samtools

# install bcftools
conda install -c bioconda bcftools
