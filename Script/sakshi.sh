mkdir HackBio

mkdir sakshi 

mkdir biocomputing && cd biocomputing

wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk 

mv wildtype.fna ../sakshi/

rm wildtype.gbk.1

cd ../sakshi/

nano analyse.sh      
   
   $ #!/bin/bash
   
     # Read the content of the file
     file_content=$(cat "wildtype.fna")
     
     if [[ $file_content == *tatatata* ]]; then
         echo "The file is a mutant"
     else 
         echo "The file is a wild type"
     fi
     
chmod +x analyse.sh

./analyse.sh 

grep "tatatata" "wildtype.fna" > "mutant_lines.txt"

esearch -db nucleotide -query "MH011443.1" | efetch -format fasta > tp53.fasta

grep -v '^>' tp53.fasta | wc -l

A=$(grep -v '^>' tp53.fasta | grep -o 'A' | wc -l)

G=$(grep -v '^>' tp53.fasta | grep -o 'G' | wc -l)

C=$(grep -v '^>' tp53.fasta | grep -o 'C' | wc -l)

T=$(grep -v '^>' tp53.fasta | grep -o 'T' | wc -l)

nano GCcontent.sh        
   
    $ #!/bin/bash

    sequence=$(awk '/^>/ {next} {print}' "tp53.fasta")

    # Count the total length of the sequence
    total_length=${#sequence}

    # Count the number of G and C nucleotides in the sequence
    gc_count=$(echo "$sequence" | tr -cd 'GC' | wc -c)

    # Calculate the GC content percentage
    gc_percentage=$(echo "scale=2; ($gc_count / $total_length) * 100" | bc)

    # Print the result
    echo "GC content percentage: $gc_percentage%"
    
chmod +x GCcontent.sh

./GCcontent.sh

touch sakshi.fna

echo “A: $A, T: $T, C: $C, G: $G” >> sakshi.fna

ls

clear

history 
