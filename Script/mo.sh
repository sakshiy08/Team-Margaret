  274  pwd
  275  mkdir mo
  276  ls
  277  mkdir biocomputing && cd biocomputing
  278  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
  279  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
  280  mv wildtype.fna /home/mosopealabi/mo
  281  rm wildtype.gbk.1
  282  grep tatatata wildtype.fna
  283  cd /home/mosopealabi/mo
  284  grep tatatata wildtype.fna
  285  grep -c tatatata wildtype.fna
  286  grep tatatata wildtype.fna > mutanttype.txt
  287  ls
  288  wget -O brca2_sequence.fasta "https://www.ncbi.nlm.nih.gov/sviewer/viewer.fcgi?id=NM_000059.4&db=nuccore&report=fasta&extrafeat=null&conwithfeat=on&hide-cdd=on"
  289  grep -v '^>' brca2_sequence.fasta | wc -l
  291  nucleotideA=$(grep -o 'A' brca2_sequence.fasta | wc -l)
  292  echo $nucleotideA
  293  nucleotideG=$(grep -o 'G' brca2_sequence.fasta | wc -l)
  294  echo $nucleotideG
  295  nucleotideC=$(grep -o 'C' brca2_sequence.fasta | wc -l)
  296  echo $nucleotideC
  297  nucleotideT=$(grep -o 'T' brca2_sequence.fasta | wc -l)
  298  echo $nucleotideT
  299  totalsum=$((nucleotideA + nucleotideG + nucleotideC + nucleotideT))
  300  GCsum=$((nucleotideG + nucleotideC))
  301  echo "The total number of nucleotides in the BRCA2 gene is: $totalsum"
  303  echo "The number of GC nucleotides in the BRCA2 gene is: $GCsum"
  304  sudo apt-get install bc
  306  result=$(echo "scale=2; ($GCsum * 100) / $totalsum" | bc)
  307  echo "The %GC content is: $result%"
  309  touch mo.fna
  310  echo “the number of A, G, T and C is $nucleotideA, $nucleotideG, $nucleotideT and $nucleotideC respectively” >> mo.fna
  311  cat mo.fna
  313  nano mo.fna
  314  history
  316  touch mo.sh
  320  nano mo.sh
