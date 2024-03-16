mkdir Hossam

mkdir biocomputing && cd $_

wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk

mv ./biocomputing/wildtype.fna ./Hossam

ls
rm wildtype.gbk.1

vim mutation_check.sh

$ #! /bin/bash

if grep -q tatatata "wildtype.fna"; then
  echo "The bacteria is MUTANT.."
else
        echo "The bacteria is WILDTYPE"
fi

chmod u+x mutation_check.sh
./mutation_check.s

grep -q tatatata "wildtype.fna" > mutant.fna

esearch -db nucleotide -query "NM_003141.4" | efetch -format fasta > NM_003141.4.fasta

wc -l ./NM_003141.4.fasta | awk '{print $0-1}'

grep -o 'A' NM_003141.4.fasta | wc -w

grep -o 'G' NM_003141.4.fasta | wc -w

grep -o 'C' NM_003141.4.fasta | wc -w

grep -o 'T' NM_003141.4.fasta | wc -w

sudo apt update && sudo apt install emboss
geecee NM_003141.4.fasta
cat GC%.txt

vim Hossam.fasta

echo "The number of (A) nucleotides is" >> Hossam.fasta && grep -o 'A' NM_003141.4 .fasta | wc -w >> Hossam.fasta

echo "The number of (C) nucleotides is" >> Hossam.fasta && grep -o 'C' NM_003141.4.fasta | wc -w >> Hossam.fasta

echo "The number of (G) nucleotides is" >> Hossam.fasta && grep -o 'G' NM_003141.4.fasta | wc -w >> Hossam.fasta

echo "The number of (T) nucleotides is" >> Hossam.fasta && grep -o 'T' NM_003141.4.fasta | wc -w >> Hossam.fasta

ls

