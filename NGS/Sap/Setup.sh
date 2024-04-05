conda create -n ngstools
conda activate ngstools
conda config --add channels conda-forge
conda config --add channels bioconda
conda list --show channels

#install forward strand zip file, reverse strand zip file, and reference genome

wget -O "The desired Dataset"


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
