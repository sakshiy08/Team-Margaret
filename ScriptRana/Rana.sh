    1  echo hello
    2  ls
    3  sudo ./VBoxLinuxAdditions.run
    4  reboot
    5  slack
    6  reboot
    7  mkdir Rana
    8  mkdir biocomputing && cd biocomputing
    9  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
   10  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
   11  mv wildtype.fna ../Rana/
   12  rm wildtype.gbk.1
   13  cd ../Rana/
   14  grep -E "(tata|tatatata)" wildtype.fna
   15  esearch -db nucleotide -query "3952" | efetch -format fasta > LEP_leptin.fasta
   16  sudo apt install ncbi-entrez-direct
   17  esearch -db nucleotide -query "3952" | efetch -format fasta > LEP_leptin.fasta
   18  grep -v '^>' LEP.fasta > sequences_only.fasta
   19  grep -v '^>' LEP_leptin.fasta | wc -l
   20  grep -o 'A' LEP_leptin.fasta | wc -l
   21  grep -o 'G' LEP_leptin.fasta | wc -l
   22  grep -o 'C' LEP_leptin.fasta | wc -l
   23  grep -o 'T' LEP_leptin.fasta | wc -l
   24  vim percent.sh
   25  sudo apt install vim
   26  vim percent.sh
   27  bash percent.sh
   28  vim percent.sh
   29  bash percent.sh
   30  echo $SHELL
   31  vim percent.sh
   32  ./percent.sh
   33  chmod +x percent.sh
   34  ./percent.sh
   35  gnome-screenshot
   36  sudo apt install gnome-screenshot
   37  gnome-screenshot
   38  touch Rana.fasta
   39  result_A=$(grep -o 'A' LEP_leptin.fasta | wc -l)
   40  result_G=$(grep -o 'G' LEP_leptin.fasta | wc -l)
   41  result_C=$(grep -o 'C' LEP_leptin.fasta | wc -l)
   42  result_T=$(grep -o 'T' LEP_leptin.fasta | wc -l)
   43  echo "Count of A: $result_A" >> Rana.fasta
   44  echo "Count of G: $result_G" >> Rana.fasta
   45  echo "Count of C: $result_C" >> Rana.fasta
   46  echo "Count of T: $result_T" >> Rana.fasta
   47  cat Rana.fasta
   48  history > Rana.sh
