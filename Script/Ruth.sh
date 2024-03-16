    1  git
    2   echo Hello
    3  vim textfile.txt
    4  vim textfile.txt
    5  vim textfile.txt
    6  vim textfile.txt
    7  vim
    8  vim textfile.txt
    9  vim textfile.txt
   10  cat textfile.txt
   11  vim textfile.txt
   12  vim
   13  --version
   14  git --version
   15  create file
   16  whoami
   17  man command
   18  man command
   19  manual
   20  man
   21  uname -a
   22  SHELL
   23  shell
   24  home
   25  vim
   26  vi textfile.txt
   27  cat textfile.txt
   28  vi hello.txt
   29  cat hello.txt
   30  vi shelltest.sh
   31  rm hello.txt
   32  cat hello.txt
   33  rm shelltext.sh
   34  rm shelltest.sh
   35  vi shelltest.sh
   36  ls
   37  pwd
   38  bash shelltest.sh
   39  echo $SHELL
   40  vi shelltest.sh
   41  ./shelltest.sh
   42  pwd
   43  ls -l
   44  chmod u+x shelltest.sh
   45  ./shelltest.sh
   46  shelltest.sh
   47  /shelltest.sh
   48  cat shelltest.sh
   49  rm shelltest.sh
   50  vi shelltest.sh
   51  bash $SHELL
   52  echo $SHELL
   53  ./shelltest.sh
   54  vi shellscript.sh
   55  ./shellscript.sh
   56  vi script.sh
   57  ./script.sh
   58  vi script.sh
   59  ./sript.sh
   60  ./script.sh
   61  ls -l /usr/bin | grep bash
   62  mkdir desktop/ruth
   63  mkdir desktop/biocomputing && cd biocomputing
   64  mkdir desktop/biocomputing
   65  pwd
   66  mkdir desktop/biocomputing && cd desktop/biocomputing
   67  cd desktop/biocomputing
   68  pwd
   69  ls
   70  rm biocomputing
   71  rm desktop/biocomputing
   72  cat desktop/computing
   73  mkdir desktop/biocomputing && cd desktop/biocomputing
   74  pwd
   75  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
   76  $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
   77  $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
   78  $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
   79  function __wget() {     : ${DEBUG:=0};     local URL=$1;     local tag="Connection: close";     local mark=0;      if [ -z "${URL}" ]; then         printf "Usage: %s \"URL\" [e.g.: %s http://www.google.com/]"                "${FUNCNAME[0]}" "${FUNCNAME[0]}";         return 1;     fi
   80      read proto server path <<<$(echo ${URL//// });     DOC=/${path// //};     HOST=${server//:*};     PORT=${server//*:};     [[ x"${HOST}" == x"${PORT}" ]] && PORT=80;     [[ $DEBUG -eq 1 ]] && echo "HOST=$HOST";     [[ $DEBUG -eq 1 ]] && echo "PORT=$PORT";     [[ $DEBUG -eq 1 ]] && echo "DOC =$DOC";      exec 3<>/dev/tcp/${HOST}/$PORT;     echo -en "GET ${DOC} HTTP/1.1\r\nHost: ${HOST}\r\n${tag}\r\n\r\n" >&3;     while read line; do         [[ $mark -eq 1 ]] && echo $line;         if [[ "${line}" =~ "${tag}" ]]; then             mark=1;         fi;     done <&3;     exec 3>&-; }
   81  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
   82  $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
   83  $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
   84  $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
   85  wget
   86  __wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
   87  cat desktop/biocomputing
   88  pwd
   89  cat biocomputing
   90  cat /desktop/biocomputing
   91  cat desktop/ruth
   92  cat /desktop/ruth
   93  pwd
   94  mkdir desktop/ruth
   95  cd desktop/ruth
   96  cd /c/users/Ruth
   97  mkdir desktop/biocomputing && cd $_
   98  __wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
   99  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
  100  function __wget() {     : ${DEBUG:=0};     local URL=$1;     local tag="Connection: close";     local mark=0;      if [ -z "${URL}" ]; then         printf "Usage: %s \"URL\" [e.g.: %s http://www.google.com/]"                "${FUNCNAME[0]}" "${FUNCNAME[0]}";         return 1;     fi
  101      read proto server path <<<$(echo ${URL//// });     DOC=/${path// //};     HOST=${server//:*};     PORT=${server//*:};     [[ x"${HOST}" == x"${PORT}" ]] && PORT=80;     [[ $DEBUG -eq 1 ]] && echo "HOST=$HOST";     [[ $DEBUG -eq 1 ]] && echo "PORT=$PORT";     [[ $DEBUG -eq 1 ]] && echo "DOC =$DOC";      exec 3<>/dev/tcp/${HOST}/$PORT;     echo -en "GET ${DOC} HTTP/1.1\r\nHost: ${HOST}\r\n${tag}\r\n\r\n" >&3;     while read line; do         [[ $mark -eq 1 ]] && echo $line;         if [[ "${line}" =~ "${tag}" ]]; then             mark=1;         fi;     done <&3;     exec 3>&-; }
  102  __wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
  103  pwd
  104  cat /c/users/Ruth/desktop/biocomputing
  105  ls
  106  ls biocomputing
  107  dir biocomputing
  108  ls desktop/biocomputing
  109  ls /c/users/Ruth/desktop/biocomputing
  110  curl -0 https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
  111  ls
  112  ls /c/users/Ruth/desktop/biocomputing
  113  curl -0 https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
  114  ls
  115  ls -l /c/users/Ruth/desktop/biocomputing
  116  curl -0 https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
  117  ls
  118  ls -a /c/users/Ruth/desktop/biocomputing
  119  ls
  120  curl -0 https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
  121  ls
  122  curl -0 https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
  123  ls -l
  124  curl -0 https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna --output wildtype.fna
  125  ls
  126  cat wildtype.fna
  127  curl -0 https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna --output wildtype.fnahttps://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.
  128  curl -0 https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk --output wildtye.gbk
  129  ls
  130  cat wildtype.gbk
  131  ls -l
  132  mv wildtye.gbk wildtype.gbk
  133  cat wildtype.gbk
  134  mv wildtype.fna /c/users/Ruth/desktop/ruth
  135  rm wildtype.gbk
  136  ls
  137  ls -l
  138  curl -0 https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk --output wildtye.gbk
  139  curl -0 https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk --output wildtype.gbk
  140  ls -lt
  141  rm wildtye.gbk
  142  ls
  143  cat wildtype.gbk
  144  pwd
  145  ls
  146  pwd
  147  cd desktop/biocomputing
  148  pwd
  149  ls
  150  ls -l /desktop/biocomputing | grep tatatata
  151  ls -l /c/Users/Ruth/desktop/biocomputing | grep -n 'tatatata'
  152  find . -type f -print0 | xargs -0 grep -l "tatatata"
  153  cd desktop/ruth
  154  cd desktop/ruth
  155  cd /c/Users/Ruth/desktop/ruth
  156  find . -type f -print0 | xargs -0 grep -l "tatatata"
  157  grep -n 'tatatata' wildtype.fna
  158  grep -n 'tata' wildtype.fna
  159  grep -n 'tatatata' wildtype.fna
  160  cd desktop/biocomputing
  161  cd /c/Users/Ruth/desktop/biocomputing
  162  grep -n 'tatatata' wildtype.gbk
  163  grep -n 'tata' wildtype.gbk
  164  cd /c/Users/Ruth/desktop/ruth
  165  ls
  166  ls -l /c/Users/Ruth/desktop/ruth | grep "tata" wildtype.fna
  167  ls -l /c/Users/Ruth/desktop/ruth | grep "tatatata" wildtype.fna
  168  grep -n 'tatatata' wildtype.fna
  169  grep "tatatata" wildtype.fna > mutant.txt
  170  ls
  171  cat mutant.txt
  172  grep -v wildtype.fna 
  173  cd /c/Users/Ruth/desktop/ruth
  174  wc -l mutant.txt
  175  grep "a" mutant.txt
  176  grep -o "a" mutant.txt
  177  grep -c "a" mutant.txt
  178  grep -n "a" mutant.txt
  179  grep -o "a" mutant.txt | wc -1
  180  grep -o 'A' filename | wc -l
  181  grep -o "a" mutant.txt | wc -l
  182  grep -o "a" mutant.txt | wc 
  183  curl -0 https://www.ncbi.nlm.nih.gov/nuccore/NC_016186.1?report=fasta&from=12032&to=13627 --output fav-gene.fna
  184  curl -0 https://www.ncbi.nlm.nih.gov/nuccore/NC_016186.1?report=fasta&from=12032&to=13627 --output fav-gene.fasta
  185  ls
  186  [200~curl -o datasets.exe "https://ftp.ncbi.nlm.nih.gov/pub/datasets/command-line/v2/win64/datasets.exe"~
  187  [200~curl -o datasets.exe "https://ftp.ncbi.nlm.nih.gov/pub/datasets/command-line/v2/win64/datasets.exe"
  188  curl -o datasets 'https://ftp.ncbi.nlm.nih.gov/pub/datasets/command-line/v2/linux-amd64/datasets'
  189  conda create -n ncbi_datasets
  190  curl -o dataformat 'https://ftp.ncbi.nlm.nih.gov/pub/datasets/command-line/v2/linux-amd64/dataformat'
  191  curl -0 https://www.ncbi.nlm.nih.gov/nuccore/NC_016186.1?report=fasta&from=12032&to=13627 --output fav-gene.fna
  192  ls
  193  curl -0 https://www.ncbi.nlm.nih.gov/nuccore/307375466
  194  ls
  195  curl -0 https://www.ncbi.nlm.nih.gov/nuccore/307375466 --output fav-gene.txt
  196  ls
  197  rm fav-gene.txt
  198  curl -0 https://www.ncbi.nlm.nih.gov/nuccore/307375466 --output fav-gene.fna
  199  cat fav-gene.fna
  200  curl -0 https://www.ncbi.nlm.nih.gov/nuccore/NC_016186.1?report=fasta&from=12032&to=13627
  201  rm fav-gene.fna
  202  curl -0 https://www.ncbi.nlm.nih.gov/nuccore/NC_016186.1?report --output fav-gene.fna
  203  cat fav-gene.fna
  204  curl -0 https://www.ncbi.nlm.nih.gov/nuccore/NC_016186.1?report=fasta --output fav-gene.fna
  205  cat fav-gene.fna
  206  ls
  207  cat gene.fna
  208  grep -n gene.fna
  209  cd /c/Users/Ruth/desktop/ruth
  210  curl -0 https://www.ncbi.nlm.nih.gov/nuccore/307375466 accession.gbk
  211  ls
  212  curl -0 https://www.ncbi.nlm.nih.gov/nuccore/307375466 --output accession.gbk
  213  ls
  214  cat accession.gbk
  215  curl -0 https://www.ncbi.nlm.nih.gov/nuccore/307375466 --output accession.txt
  216  cat accession.txt
  217  rm accession.gbk accession.txt
  218  ls
  219  cat gene.fna
  220  wc -l gene.fna
  221  grep -v '^>' gene.fna | wc -l
  222  curl -0 https://www.ncbi.nlm.nih.gov/nuccore/HQ184469.1?report=fasta --output fav-gene.fasta
  223  ls
  224  cat fav-gene.fasta
  225  wc -l
  226  cd /c/Users/Ruth/desktop/ruth
  227  wget -O gene.fasta "https://www.ncbi.nlm.nih.gov/nuccore/HQ184469.1?report=fasta" --output ND5.fasta
  228  curl -O gene.fasta "https://www.ncbi.nlm.nih.gov/nuccore/HQ184469.1?report=fasta" --output ND5.fasta
  229  curl -O  "https://www.ncbi.nlm.nih.gov/nuccore/HQ184469.1?report=fasta" --output ND5.fasta
  230  cat ND5.fasta
  231  ls
  232  cat HQ184469.1
  233  rm HQ184469.1
  234  ls
  235  cat gene.fna
  236  grep -v '^>' gene.fna | wc -l
  237  grep -o "A" gene.fna | wc -l
  238  grep -o "C" gene.fna | wc -l
  239  grep -o "G" gene.fna | wc -l
  240  grep -o "T" gene.fna | wc -l
  241  vi nucleotide.txt
  242  ./nucleotide.txt
  243  vi nucleotide.txt
  244  ./nucleotide.txt
  245  vi nucleotide.txt
  246  ./nucleotide.txt
  247  vi nucleotide.txt
  248  ./nucleotide.txt
  249  vi nucleotide.txt
  250  ./nucleotide.txt
  251  vi nucleotide.txt
  252  ./nucleotide.txt
  253  vi nucleotide.txt
  254  ./nucleotide.txt
  255  vi nucleotide.txt
  256  ./nucleotide.txt
  257  vi nucleotide.txt
  258  ./nucleotide.txt
  259  vi nucleotide.txt
  260  ./nucleotide.txt
  261  vi nucleotide.txt
  262  ./nucleotide.txt
  263  vi nucleotide.txt
  264  ./nucleotide.txt
  265  vi nucleotide.txt
  266  ./nucleotide.txt
  267  vi nucleotide.sh
  268  ./nucleotide.sh
  269  chmod u+x nucleotide.sh
  270  ./nucleotide.sh
  271  chmod +x calculate_gc_percentage.sh
  272  chmod +x calculate_gc_nucleotide.sh
  273  ls
  274  ls
  275  rm nucleotide.txt
  276  ls
  277  vi nucleotide.sh
  278  ./nucleotide.sh
  279  chmod +x calculate_gc_nucleotide.sh
  280  chmod u+x nucleotide.sh
  281  ./nucleotide.sh
  282  vi nucleotide.sh
  283  ./nucleotide.sh
  284  vi nucleotide.sh
  285  ./nucleotide.sh
  286  vi nucleotide.sh
  287  ./nucleotide.sh
  288  echo 26 > nucleotide.sh
  289  ls
  290  cat nucleotide.sh
  291  vi nucleotide.sh
  292  echo Adenine=234
  293  Cytosine=108
  294  Guanine=310
  295  Thymine=947
  296  # Calculate the total count of all nucleotides
  297  total=$((Adenine + Cytosine + Guanine + Thymine))
  298  # Calculate the subtotal of Cytosine and Guanine
  299  subtotal=$((Cytosine + Guanine))
  300  # Calculate the GC percentage
  301  GCpercentage=$((subtotal * 100 / total))
  302  # Results
  303  echo "Total count of all nucleotides: $total" >> nucleotide.sh
  304  ls
  305  cat nucleotide.sh
  306  vi nucleotide.sh
  307  ./nucleotide.sh
  308  echo "Total %GC in my favorite gene - ND5 Wuchereria bancrofti iS 26%" >> nucleotide.txt
  309  ls
  310  history > ruth.sh
  311  ls
  312  cat ruth.sh
  313  mv nuclotide.txt > ruthoutput
  314  mv nucleotide Ruthoutput
  315  mv nucleotide.txt Ruthoutput
  316  ls
  317  cat ruthoutput
  318  ls ruthoutput
  319  cat nucleotide
  320  history > ruth.sh
  321  ls
  322  git clone "https://github.com/sakshiy08/Team-Margaret.git"
  323  ls
  324  mv Ruthoutput Team-Margaret
  325  ls
  326  ls
  327  git clone https://github.com/sakshiy08/Team-Margaret.git
  328  mv nucleotide.txt Team-Margaret/output
  329  ls
  330  cd Team-Margaret
  331  git add output/ruth-nucleotide.txt
  332  ls
  333  git add ruthoutput
  334  git add output/ruthoutput.txt
  335  git add ruthoutput
  336  git commit -m "This id my nucleotide output file for the %GC"
  337  git push origin main
  338  history > Ruth.sh
