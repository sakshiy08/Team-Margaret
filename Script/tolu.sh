  487  rmdir tolu
  488  ls
  489  mkdir tolu
  490  mkdir biocomputing && cd biocomputing
  491  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
  492  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
  493  mv wildtype.fna ../tolu/
  494  ls
  495  rm wildtype.gbk.1
  496  ls
  497  cd ../tolu
  498  grep tatatata wildtype.fna
  499  grep -i "tatatata" wildtype.fna > mutant_type.fna
  500  ls
  501  grep -v "^>" IGHM_gene.fna | wc -l
  502  grep -o "A" IGHM_gene.fna | wc -l
  503  grep -o "G" IGHM_gene.fna | wc -l
  504  grep -o "C" IGHM_gene.fna | wc -l
  505  grep -o "T" IGHM_gene.fna | wc -l
  506  nano IGHM_gene.fna
  507  geecee IGHM_gene.fna
  508  ls
  509  cat NC_000014.9.geecee
  510  touch tolu.fna
  511  ls
  512  echo "Count of A =" >> tolu.fna && grep -o "A" IGHM_gene.fna | wc -l >> tolu.fna
  513  echo "Count of G =" >> tolu.fna && grep -o "G" IGHM_gene.fna | wc -l >> tolu.fna
  514  echo "Count of T =" >> tolu.fna && grep -o "T" IGHM_gene.fna | wc -l >> tolu.fna
  515  echo "Count of C =" >> tolu.fna && grep -o "C" IGHM_gene.fna | wc -l >> tolu.fna
  516  nano tolu.fna
  517  cat tolu.fna
  518  ls
  519  cd ../biocomputing
  520  ls
  521  clear
  522  history 35
  523  nano tolu.sh
  524  history 35 > tolu.sh
  525  nano tolu.sh
  526  history 40 > tolu.sh
