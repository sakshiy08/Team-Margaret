1. mkdir HackBio

2. mkdir sakshi 

3. mkdir biocomputing && cd biocomputing

4. wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk 

5. mv wildtype.fna ../sakshi/

6. rm wildtype.gbk.1

7. cd ../sakshi/

8. nano analyse.sh #script to check whether our file is mutant or wildtype
   
   $ #!/bin/bash
   
     # Read the content of the file
     file_content=$(cat "wildtype.fna")
     
     if [[ $file_content == *tatatata* ]]; then
         echo "The file is a mutant"
     else 
         echo "The file is a wild type"
     fi
     
9. chmod +x analyse.sh

10. ./analyse.sh 

11. grep "tatatata" "wildtype.fna" > "mutant_lines.txt"

12. echo tp53

13. esearch -db nucleotide -query "MH011443.1" | efetch -format fasta > tp53.fasta

14. grep -v '^>' tp53.fasta | wc -l

15. A=$(grep -v '^>' tp53.fasta | grep -o 'A' | wc -l)

16. G=$(grep -v '^>' tp53.fasta | grep -o 'G' | wc -l)

17. C=$(grep -v '^>' tp53.fasta | grep -o 'C' | wc -l)

18. T=$(grep -v '^>' tp53.fasta | grep -o 'T' | wc -l)

19. nano GCcontent.sh #script to calculate %GC content in our gene 
   
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
    
20. chmod +x GCcontent.sh

21. ./GCcontent.sh

22. touch sakshi.fna

23. echo “A: $A, T: $T, C: $C, G: $G” >> sakshi.fna

24. ls

25. clear

26. history 
