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
   49  git clone https://github.com/Rana-Sabrii/Team-Margaret
   50  sudo apt install git
   51  git clone https://github.com/Rana-Sabrii/Team-Margaret
   52  cd Team-Margaret
   53  mkdir -p ScriptRana
   54  mv ../Rana.sh ScriptRana/
   55  git add ScriptRana/Rana.sh
   56  git commit -m "Add Rana.sh script to Script folder"
   57  git config --global user.email "ranaasabrii2@gmail.com"
   58  git config --global user.name "Rana-Sabrii"
   59  git commit -m "Add Rana.sh script to Script folder"
   60  git push origin master
   61  git branch
   62  git checkout main
   63  git push origin main
   64  history > Rana.sh
   65  mkdir Rana
   66  mkdir biocomputing && cd biocomputing
   67  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
   68  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
   69  mkdir Rana
   70  mkdir biocomputing && cd biocomputing
   71  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
   72  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
   73  mv wildtype.fna ../Rana/
   74  rm wildtype.gbk.1
   75  cd ../Rana
   76  grep -E "(tata|tatatata)" wildtype.fna
   77  esearch -db nucleotide -query "3952" | efetch -format fasta > LEP_leptin.fasta
   78  grep -v '^>' LEP_leptin.fasta > sequences_only.fasta
   79  wc -l sequences_only.fasta
   80  grep -o 'G' LEP_leptin.fasta | wc -l
   81  grep -o 'C' LEP_leptin.fasta | wc -l
   82  grep -o 'T' LEP_leptin.fasta | wc -l
   83  vim percent.sh
   84  echo $SHELL
   85  vim percent.sh
   86  chmod +x percent.sh
   87  ./percent.sh
   88  touch Rana.fasta
   89  result_A=$(grep -o 'A' LEP_leptin.fasta | wc -l)
   90  result_G=$(grep -o 'G' LEP_leptin.fasta | wc -l)
   91  result_C=$(grep -o 'C' LEP_leptin.fasta | wc -l)
   92  result_T=$(grep -o 'T' LEP_leptin.fasta | wc -l)
   93  echo "Count of A: $result_A" >> Rana.fasta
   94  echo "Count of G: $result_G" >> Rana.fasta
   95  echo "Count of C: $result_C" >> Rana.fasta
   96  echo "Count of T: $result_T" >> Rana.fasta
   97  cat Rana.fasta
   98  history >Rana.sh
