##commands used to install all the tools needed for creating the pipeline 

conda create -n ngstools
conda activate ngstools
conda config --add channels conda-forge
conda config --add channels bioconda
conda list --show channels
conda install fastqc
conda install fastp
conda install samtools
conda install bwa
conda install bcftools
