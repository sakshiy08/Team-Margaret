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
  270  clear
  271  cat Margaret_Dayhoff.sh
  272  ls
  273  cd biocomputing && ls
  274  cd ../biocomputing
  275  clear
  276  cd ../Rana
  277  cd ../Margaret_Dayhoff
  278  clear
  279  ls
  280  cd ../biocomputing && ls
  281  conda dactivate
  282  conda deactivate
  283  clear
  284  mkdir Rana
  285  mkdir biocomputing && cd biocomputing
  286  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
  287  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
  288  wget "https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk"
  289  mv wildtype.fna ../Rana
  290  rm wildtype.gbk.1
  291  cd ../Rana
  292  grep -E "(tata|tatatata)"  wildtype.fna
  293  grep -E "tatatata" wildtype.fna > mutant_lines.txt
  294  cat mutant_lines.txt
  295  echo LEP_leptin
  296  esearch -db nucleotide -query = '3952' | efetch -format fasta > LEP_leptin.fasta
  297  esearch -db nucleotide -query = "3952" | efetch -format fasta > LEP_leptin.fasta
  298  esearch -db nucleotide -query '3952' | efetch -format fasta > LEP_leptin.fasta
  299  grep -V ">" LEP_leptin.fasta > sequence_only
  300  grep -V ">" LEP_leptin.fasta > sequence_only.fasta
  301  clear
  302  grep -V "^>" LEP_leptin.fasta > Sequence_only.fasta
  303  grep -v "^>" LEP_leptin.fasta > Sequence_only.fasta
  304  wc -l
  305  wc -l Sequence_only.fasta
  306  conda deactivate
  307  wc -l < Sequence_only.fasta
  308  result_A=$( grep -O "A" Sequence_only.fasta | wc - l)
  309  result_A=$( grep -o "A" Sequence_only.fasta | wc - l)
  310  result_A=$(grep -o "A" Sequence_only.fasta | wc - l)
  311  result_A=$(grep -o 'A' Sequence_only.fasta | wc -l)
  312  echo $result_A
  313  result_G=$(grep -o "G" Sequence_only.fasta | wc -l)
  314  echo $result_G
  315  result_C=$(grep -o "C" Sequence_only.fasta | wc -l)
  316  echo $result_C
  317  result_T=$(grep -o "T" Sequence_only.fasta | wc -l)
  318  echo $result_T
  319  echo $SHELL
  320  vim gcpercent.sh
  321  chmod +x gcpercent.sh
  322  ./gcpercent.sh
  323  vim gcpercent.sh
  324  /gcpercent.sh
  325  ./gcpercent.sh
  326  vim gcpercent.sh
  327  ./gcpercent.sh
  328  vim gcpercent.sh
  329  chmod +x gcpercent.sh
  330  ./gcpercent.sh
  331  vim gcpercent.sh
  332  chmod +x gcpercent.sh
  333  ./gcpercent.sh
  334  conda deactivate
  335  clear
  336  mkdir Rana
  337  mkdir biocomputing && cd biocomputing
  338  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
  339  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
  340  mv wildtype.fna ../Rana
  341  rm wildtype.gbk.1
  342  cd ../Rana
  343  grep -E "(tata|tatatata)" wildtype.fna
  344  grep -E "(tatatata)" wildtype.fna > mutant_lines.txt
  345  cat mutant_lines.txt
  346  echo LEP
  347  esearch -db nucleotide -query "3952" | efetch -format fasta LEP_leptin.fasta
  348  esearch -db nucleotide -query '3952' | eftech -format fasta > LEP_leptin.fasta
  349  esearch -db nucleotide -query '3952' | efetch -format fasta > LEP_leptin.fasta
  350  grep -v "^>" LEP_leptin.fasta > sequence_only.fasta
  351  wc -l sequence_only.fasta
  352  wc -l < sequence_only.fasta
  353  result_A=$(grep -o "A" sequence_only.fasta | wc -l)
  354  echo $result_A
  355  result_T=$(grep -o "T" sequence_only.fasta | wc-l)
  356  result_T=$(grep -o "T" sequence_only.fasta | wc -l)
  357  echo $result_T
  358  touch Rana.fasta
  359  echo "Number of A Occurance: $result_A >> Rana.fasta"
  360  echo "Number of A Occurance: $result_A" >> Rana.fasta
  361  cat Rana.fasta
  362  echo $SHELL
  363  vim percent.sh
  364  chmod +x percent.sh
  365  ./percent.sh
  366  echo "Number of T Occurance is : $result_T" >> Rana.fasta
  367  cat Rana.fasta
  368  grep -E "(tata|tatatata)" wildtype.fna
  369  grep -E "(tatatata)" wildtype.fna > mutant_line.txt
  370  cat mutant_line.txt
  371  result_A=$(grep -o "A" LEP_leptin.fasta | wc -l)
  372  echo $result_A
  373  grep -v "^>" LEP_leptin.fasta > sequence.fasta
  374  wc -l sequence.fasta
  375  wc -l < sequence.fasta
  376  vim percen.sh
  377  chmod +x percen.sh
  378  ./percen.sh
  379  result_A=$(grep -o "A" LEP_leptin.fasta | wc-l)
  380  result_A=$(grep -o "A" LEP_leptin.fasta | wc -l)
  381  result_T=$(grep -o "T" LEP_leptin.fasta | wc -l)
  382  echo "Number of A occurance : $result_A" > Rana.fasta
  383  echo "Number of T occurance : $result_T" >> Rana.fasta
  384  cat Rana.fasta
  385  wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz?download=1
  386  ls
  387  wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz?download=1 -o Reverse.fastq
  388  mkdir Dataset
  389  cd Dataset
  390  wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz?download=1 -o Forward.fastq
  391  wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz?download=1 -o Reverse.fastq
  392  cd ..
  393  mkdir Reference && cd Reference
  394  wget https://zenodo.org/records/10886725/files/Reference.fasta?download=1 -o Reference.fasta
  395  ls
  396  mv 'Reference.fasta?download=1' Reference.fasta
  397  ls
  398  clear
  399  mkdir Dataset && cd Dataset
  400  wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz?download=1
  401  ls
  402  mv 'ERR8774458_1.fastq.gz?download=1' Forward.fastq.gz
  403  ls
  404  wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz?download=1
  405  ls
  406  mv 'ERR8774458_2.fastq.gz?download=1' Reverse.fastq.gz
  407  ls
  408  gunzip Forward.fastq.gz
  409  ls
  410  gunzip Reverse.fastq.gz
  411  ls
  412  cd ..
  413  mkdir Reference && cd Reference
  414  wget https://zenodo.org/records/10886725/files/Reference.fasta?download=1
  415  ls
  416  mv 'Reference.fasta?download=1' Reference.fasta
  417  ls
  418  cd ..
  419  mkdir Quality_Control_Reports 
  420  fastqc Dataset/Forward.fastq -o Quality_Control_Reports/
  421  fastqc Dataset/Reverse.fastq -o Quality_Control_Reports/
  422  multiqc Quality_Control_Reports/
  423  mkdir Trimmed
  424  fastp -i Dataset/Forward.fastq -I Dataset/Reverse.fastq -o Trimmed/Trimmed_Forward.fastq -O Trimmed/Trimmed_Reverse.fastq
  425  ls
  426  cd Reference
  427  ls
  428  bwa index Reference.fasta
  429  bwa mem Reference.fasta Trimmed/Trimmed_Forward.fastq Trimmed/Trimmed_Reverse.fastq > aligned.sam
  430  cd ..
  431  cd Trimmed
  432  bwa mem Reference/Reference.fasta Trimmed_Forward.fastq Trimmed_Reverse.fastq > aligned.sam
  433  cd..
  434  cd ..
  435  cd Trimmed
  436  ls
  437  fastqc Trimmed_Forward.fastq
  438  fastqc Trimmed_Reverse.fastq
  439  cd ..
  440  bwa mem Reference/Reference.fasta Trimmed/Trimmed_Forward.fastq Trimmed/Trimmed_Reverse.fastq > aligned.sam
  441  ls
  442  nano aligned.sam
  443  samtools view -S -b aligned.sam > aligned.bam
  444  ls
  445  nano aligned
  446  conda deactivate
  447  sudo apt-get install tmux
  448  ls
  449  cd Dataset/
  450  ls
  451  bwa index Reference.fasta 
  452  bwa mem Reference.fasta trimmed_forward.fastq trimmed_reverse.fastq > aligned.sam
  453  ls
  454  conda install -c bioconda samtools
  455  conda install -c bioconda bcftools
  456  history > Rana.sh
  457  mkdir Dataset && cd Dataset
  458  wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz?download=1 -o Forward.fastq.gz
  459  clear
  460  mkdir Dataset && cd Dataset
  461  wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz?download=1
  462  wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz?download=1
  463  ls
  464  mv 'ERR8774458_1.fastq.gz?download=1' Forward.fastq.gz && mv 'ERR8774458_2.fastq.gz?download=1' Reverse.fastq.gz
  465  ls
  466  gunzip Forward.fastq.gz && gunzip Reverse.fastq.gz
  467  cd ..
  468  mkdir Ref
  469  cd Ref
  470  wget https://zenodo.org/records/10886725/files/Reference.fasta?download=1
  471  ls
  472  mv 'Reference.fasta?download=1' Reference.fasta
  473  cd ..
  474  mkdir QC_Reports
  475  fastqc Dataset/Forward.fastq -o QC_Reports/
  476  fastqc Dataset/Reverse.fastq -o QC_Reports/
  477  multiqc QC_Reports/
  478  mkdir Trimmed
  479  ls Dataset/
  480  fastp -i Dataset/Forward.fastq -I Dataet/Reverse.fastq -o Trimmed/Trimmed_Forward.fastq -O Trimmed/Trimmed_Reverse.fastq
  481  fastp -i Dataset/Forward.fastq -I Dataset/Reverse.fastq -o Trimmed/Trimmed_Forward.fastq -O Trimmed/Trimmed_Reverse.fastq
  482  cd Trimmed
  483  ls
  484  fastqc Trimmed_Forward.fastq
  485  fastqc Trimmed_Reverse.fastq
  486  cd ..
  487  ls
  488  cd Ref
  489  ls
  490  bwa index Reference.fasta 
  491  cd ..
  492  ls Trimmed/
  493  bwa mem Ref/Reference.fasta Trimmed/Trimmed_Forward.fastq Trimmed/Trimmed_Reverse.fastq > aligned.sam
  494  samtools view -S -b aligned.sam > aligned.bam
  495  samtools sort -o aligned.sorted.bam aligned.bam
  496  samtools flagstat aligned.sorted.bam
  497  mkdir results && cd results
  498  mkdir bcf
  499  cd ..
  500  bcftools mpileup -O b -o results/bcf/SRR2584866_raw.bcf -f Ref/Reference.fasta aligned.sorted.bam
  501  bcftools call --ploidy 1 -m -v -o results/vcf/SRR2584866_variants.vcf results/bcf/SRR2584866_raw.bcf
  502  vcfutils.pl varFilter results/vcf/SRR2584866_variants.vcf  > results/vcf/SRR2584866_final_variants.vcf
  503  less -S results/vcf/SRR2584866_final_variants.vcf
  504  history > Rana_NGS.sh
