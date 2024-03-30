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
   99  exit
  100  conda activate base
  101  conda activate 
  102  which conda
  103  conda install
  104  ls
  105  cd Downloads
  106  ls
  107  sh Anaconda3-2024.02-1-Linux-x86_64.sh
  108  cd
  109  which conda
  110  conda activate base
  111  which conda
  112  conda config --set auto_activate_base true
  113  wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
  114  ls
  115  sh Miniconda3-latest-Linux-x86_64.sh
  116  which conda
  117  where conda
  118  which conda
  119  conda activate base
  120  exit
  121  mkdir Rana
  122  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
  123  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
  124  mv wildtype.fna ../Rana/
  125  rm wildtype.gbk.1
  126  cd ../Rana
  127  grep -E "(tata|tatatata)" wildtype.fna
  128  grep -E "(tatatata)" wildtype.fna > mutant_lines.txt
  129  cat mutant_lines.txt
  130  grep -E "(tatatata)" wildtype.fna > mutant_lines.fna
  131  cat mutant_lines.fna
  132  grep -v '^>' LEP_leptin.fasta > sequences_only.fasta
  133  grep -o 'A' sequences_only.fasta | wc -l
  134  grep -o 'G' sequences_only.fasta | wc -l
  135  grep -o 'C' sequences_only.fasta | wc -l
  136  grep -o 'T' sequences_only.fasta | wc -l
  137  echo $SHELL
  138  vim percent.sh
  139  chmod +x percent.sh
  140  ./percent.sh
  141  sudo apt update && sudo apt install emboss
  142  geecee sequences_only.fasta
  143  cat CG%.txt
  144  vim CG%.sh
  145  vim percent.sh
  146  chmod +x CG%.sh
  147  ./CG%.sh
  148  vim CG%.sh
  149  ./CG%.sh
  150  touch Rana.fasta
  151  result_A=$(grep -o 'A' LEP_leptin.fasta | wc -l)
  152  result_A
  153  cat result_A
  154  echo $result_A
  155  result_A=$(grep -o 'A' sequences_only.fasta | wc -l)
  156  result_G=$(grep -o 'G' sequences_only.fasta | wc -l)
  157  result_C=$(grep -o 'C' sequences_only.fasta | wc -l)
  158  result_T=$(grep -o 'T' sequences_only.fasta | wc -l)
  159  echo "Count of A: $result_A" >> Rana.fasta
  160  echo "Count of G: $result_G" >> Rana.fasta
  161  echo "Count of C: $result_C" >> Rana.fasta
  162  echo "Count of T: $result_T" >> Rana.fasta
  163  cat Rana.fasta
  164  history > Rana.sh
  165  clear
  166  git clone https://github.com/Rana-Sabrii/Team-Margaret
  167  cd Team-Margaret
  168  git ls-tree --name-only HEAD:Output
  169  git ls-tree --name-only HEAD:Script
  170  exit
  171  echo R
  172  exit
  173  conda activate
  174  /home/rana-sabry/anaconda3/bin/conda activate base
  175  ```bash
  176   nano ~/.bashrc
  177   ```
  178  source ~/.bashrc
  179  conda activate base
  180  conda config --set auto_activate_base true
  181  which miniconda3 
  182  nano ~/.bashrc
  183  source ~/.bashrc
  184  which conda
  185  conda activate base
  186  conda init
  187  conda activate base
  188  conda activate
  189  conda create -n funtools
  190  conda activate funtools
  191  conda install -c conda-forge figlet
  192  conda install -c conda-forge pyfiglet
  193  conda deactivate
  194  conda create -n funtools -c conda-forge figlet
  195  conda create -n funtools
  196  conda activate funtools
  197  conda deactivate
  198  conda config --add channels anaconda
  199  conda activate funtools
  200  conda install figlet
  201  figlet Rana
  202  pyfiglet Rana
  203  conda install -c conda-forge figlet
  204  conda install tsnyder::figlet
  205  figlet Rana
  206  conda install -c bioconda bwa
  207  conda install -c bioconda blast
  208  conda install -c bioconda samtools
  209  conda install -c bioconda bedtools
  210  conda install -c bioconda spades.py
  211  conda install bioconda::spades
  212  conda install -c bioconda spades
  213  conda install -c bioconda bcftools
  214  conda install -c bioconda fastp
  215  conda install -c bioconda multiqc
  216  conda list
  217  Conda install multiqc
  218  conda install multiqc
  219  conda config --add channels conda-forge
  220  conda install -c bioconda multiqc
  221  history > Conda.sh
  222  ls
  223  conda deactivate
  224  clear
  225  wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
  226  ls
  227  sh Miniconda3-latest-Linux-x86_64.sh
  228  which conda
  229  nano ~/.bashrc
  230  source ~/.bashrc
  231  conda deactivate
  232  which conda
  233  conda deactivate
  234  clear
  235  conda deactivate
  236  clear
  237  mkdir Margaret_Dayhoff
  238  mkdir biocomputing && cd biocomputing
  239  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
  240  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
  241  mv wildtype.fna ../Margaret_Dayhoff/
  242  rm wildtype.gbk.1
  243  cd ../Margaret_Dayhoff
  244  grep -E "(tata|tatatata)" wildtype.fna
  245  grep -E "(tatatata)" wildtype.fna > mutant_lines.txt
  246  cat mutant_lines.txt
  247  esearch -db nucleotide -query "3952" | efetch -format fasta > LEP_leptin.fasta
  248  grep -v '^>' LEP_leptin.fasta > sequences_only.fasta
  249  wc -l sequences_only.fasta
  250  result_A=$(grep -o 'A' sequences_only.fasta | wc -l)
  251  echo $result_A
  252  result_G=$(grep -o 'G' sequences_only.fasta | wc -l)
  253  echo $result_G
  254  result_C=$(grep -o 'C' sequences_only.fasta | wc -l)
  255  echo $result_C
  256  result_T=$(grep -o 'T' sequences_only.fasta | wc -l)
  257  echo $SHELL
  258  vim percent.sh
  259  $ chmod +x percent.sh
  260  chmod +x percent.sh
  261  ./percent.sh
  262  touch Margaret_Dayhoff
  263  touch Margaret_Dayhoff.fasta
  264  echo "Count of A: $result_A" >> Margaret_Dayhoff.fasta
  265  echo "Count of G: $result_G" >> Margaret_Dayhoff.fasta
  266  echo "Count of C: $result_C" >> Margaret_Dayhoff.fasta
  267  echo "Count of T: $result_T" >> Margaret_Dayhoff.fasta
  268  cat Margaret_Dayhoff.fasta
  269  history > Margaret_Dayhoff.sh
