    1  truncate -s 0 ~/.bash_history
    2  history
    3  clear
    4  mkdir Project3 && cd Project3
    5  sudo apt update
    6  sudo apt upgrade
    7  sudo apt install bwa
    8  sudo apt install bcftools samtools
    9  sudo apt install fastqc
   10  sudo apt install fastp
   11  fastp --version
   12  fastqc --version
   13  bcftools --version
   14  samtools --version
   15  bwa
   16  mkdir QC_output1 && mkdir trim_output1 && mkdir GMap_output1 && mkdir QC_output2 && mkdir trim_output2 && mkdir GMap_output2
   17  ls
   18  mkdir Ref1 && mkdir Ref2
   19  ls -lh
   20  wget https://zenodo.org/records/10886725/files/Reference.fasta && mv Reference.fasta Ref1/
   21  ls
   22  cd Ref1
   23  ls
   24  cd ..
   25  cd Ref1
   26  less Reference.fasta
   27  cd ..
   28  wget https://zenodo.org/records/10426436/files/ERR8774458_1.fastq.gz
   29  wget https://zenodo.org/records/10426436/files/ERR8774458_2.fastq.gz
   30  ls -lh
   31  fastqc *.fastq.gz
   32  ls -lh
   33  pwd
   34  fastp -i *_1.fastq.gz -I *_2.fastq.gz -o trimmedForward1.fastq -O trimmedReverse2.fastq --qualified_quality_phred 20 --html report.html --json report.json
   35  ls -lh
   36  bwa index -a bwtsw Reference.fasta
   37  cd Ref1
   38  mv Reference.fasta Project3/
   39  cd ..
   40  bwa index -a bwtsw /Ref1/ Reference.fasta
   41  bwa index -a bwtsw /Ref1  Reference.fasta
   42  ls
   43  cd Ref1
   44  ls
   45  rm -rf -r Reference.fasta
   46  ls
   47  cd ..
   48  ls
   49  wget https://zenodo.org/records/10886725/files/Reference.fasta
   50  bwa index -a bwtsw Reference.fasta
   51  ls -lh
   52  bwa mem Reference.fasta trimmedForward11.fastq trimmedReverse22.fastq > Aligned_ ERR8774458.sam
   53  ls
   54  rm -rf -r Aligned_
   55  bwa mem Reference.fasta trimmedForward1.fastq trimmedReverse2.fastq > Aligned_ERR8774458.sam
   56  ls -lh
   57  samtools view -hbo Aligned_ERR8774458.bam Aligned_ERR8774458.sam
   58  ls -lh
   59  samtools sort Aligned_ERR8774458.bam -o ERR8774458.sorted.bam
   60  ls -lh
   61  samtools index ERR8774458.sorted.bam
   62  ls -lh
   63  bcftools mpileup -Ou -f Reference.fasta ERR8774458.sorted.bam | bcftools call -Ov -mv > ERR8774458.vcf
   64  ls -lh
   65  ls *.html
   66  mv report.html trim_output1/
   67  ls *.html
   68  ls *.json
   69  mv report.json trim_output1/
   70  ls -lh
   71  mv trimmedForward1.fastq trim_output1/
   72  mv trimmedReverse2.fastq trim_output1/
   73  ls -lh
   74  mv Reference.fasta Ref1/
   75  mv ERR8774458_1_fastqc.zip ERR8774458_2_fastqc.zip ERR8774458_2_fastqc.html ERR8774458_1_fastqc.html QC_output1
   76  ls
   77  ls -lh
   78  cd QC_output1
   79  ls
   80  cd ..
   81  mkdir InitialFASTQ_Dataset
   82  mv ERR8774458_1.fastq.gz ERR8774458_2.fastq.gz InitialFASTQ_Dataset/
   83  ls -lh
   84  cd InitialFASTQ_Dataset
   85  ls
   86  cd ..
   87  mkdir VC_output1
   88  mv ERR8774458.vcf VC_output1/
   89  ls -lh
   90  mv Reference.fasta.amb Reference.fasta.ann Reference.fasta.bwt Reference.fasta.fai Reference.fasta.pac Reference.fasta.sa Aligned_ERR8774458.bam Aligned_ERR8774458.sam ERR8774458.sorted.bam ERR8774458.sorted.bam.bai GMap_output1/
   91  ls -lh
   92  cd GMap_output1
   93  ls -lh
   94  cd ..
   95  ls
   96  cd Project3
   97  ls -lh
   98  cd GMap_output1
   99  ls
  100  cd ..
  101  wget -O ReferenceNEW.fasta "https://raw.githubusercontent.com/josoga2/yt-dataset/main/dataset/raw_reads/reference.fasta"
  102  less ReferenceNEW.fasta
  103  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R1.fastq.gz && wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R2.fastq.gz
  104  ls -lh
  105  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R1.fastq.gz && wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R2.fastq.gz
  106  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R1.fastq.gz && wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R2.fastq.gz
  107  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R1.fastq.gz && wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R2.fastq.gz
  108  wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R1.fastq.gz && wget https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R2.fastq.gz
  109  ls -lh
  110  ls
  111  ls *.fastq.gz
  112  fastqc *.fastq.gz
  113  sudo apt install fastqc
  114  fastqc *.fastq.gz
  115  ls *.html 
  116  ls *.zip
  117  ls *.html && ls *.zip
  118  ls
  119  mv *.zip QC_output2/
  120  ls
  121  mv *.html QC_output2/
  122  ls
  123  pwd
  124  cd QC_output2
  125  mv *.html /Project3
  126  mv *.html Project3/
  127  ls
  128  cd ..
  129  ls
  130  mv Project3/QC_output2/* Project3/
  131  cd Project3
  132  ls
  133  cd QC_output2
  134  ls
  135  cd ..
  136  nano trimming.sh
  137  ls
  138  rm -rf -r QC_output2
  139  ls
  140  rm -rf -r trim_output2
  141  ls
  142  nano trimming.sh
  143  bash trimming.sh
  144  sudo apt install fastp
  145  bash trimming.sh
  146  ls
  147  cd trim_output2
  148  ls
  149  cd ..
  150  cd trim_output2
  151  ls
  152  cd ..
  153  rm -rf -r trim_output2
  154  ls
  155  mkdir QC_output2
  156  mv *.html && mv *.zip QC_output2/
  157  ls
  158  rm -rf -r fastp.json
  159  nano trimming.sh
  160  ls
  161  bash trimming.sh
  162  ls
  163  cd trim_output1
  164  ls
  165  cd ..
  166  cd trim_output2
  167  ls
  168  cd ..
  169  mv *.zip QC_output2/
  170  ls
  171  mv *.html QC_output2
  172  ls
  173  bwa index -a bwtsw ReferenceNEW.fasta
  174  sudo apt install bwa
  175  bwa index -a bwtsw ReferenceNEW.fasta
  176  pwd
  177  cd trim_output2
  178  ls
  179  bwa mem Project3/ReferenceNEW.fasta ACBarrie_R1.fastq.gz ACBarrie_R2.fastq.gz > Aligned_ACBarrie.sam
  180  bwa mem /Project3/ReferenceNEW.fasta ACBarrie_R1.fastq.gz ACBarrie_R2.fastq.gz > Aligned_ACBarrie.sam
  181  ls
  182  cd ..
  183  ls
  184  cd QC_output2
  185  cd
  186  cd Project3
  187  cd QC_output2
  188  ls
  189  cd ..
  190  mkdir NEWFASTQ_Dataset
  191  ls
  192  mv *.fastq.gz NEWFASTQ_Dataset/
  193  ls
  194  cd
  195  mv Project3/trim_output2/* Project3/
  196  cd Project3
  197  ls
  198  bwa mem ReferenceNEW.fasta ACBarrie_R1.fastq.gz ACBarrie_R2.fastq.gz > Aligned_ACBarrie.sam 
  199  ls
  200  bwa mem ReferenceNEW.fasta Alsen_R1.fastq.gz Alsen_R2.fastq.gz > Aligned_Alsen.sam
  201  bwa mem ReferenceNEW.fasta Baxter_R1.fastq.gz Baxter_R2.fastq.gz > Aligned_Baxter.sam 
  202  bwa mem ReferenceNEW.fasta Chara_R1.fastq.gz Chara_R2.fastq.gz > Aligned_Chara.sam 
  203  bwa mem ReferenceNEW.fasta Drysdale_R1.fastq.gz Drysdale_R2.fastq.gz > Aligned_Drysdale.sam 
  204  ls
  205  samtools view -hbo Aligned_ACBarrie.bam Aligned_ACBarrie.sam
  206  sudo apt install samtools
  207  samtools view -hbo Aligned_ACBarrie.bam Aligned_ACBarrie.sam
  208  ls
  209  samtools view -hbo Aligned_Alsen.bam Aligned_Alsen.sam
  210  ls
  211  samtools view -hbo Aligned_Baxter.bam Aligned_Baxter.sam
  212  samtools view -hbo Aligned_Chara.bam Aligned_Chara.sam
  213  samtools view -hbo Aligned_Drysdale.bam Aligned_Drysdale.sam
  214  ls
  215  samtools sort Aligned_ACBarrie.bam -o ACBarrie.sorted.bam
  216  samtools sort Aligned_Alsen.bam -o Alsen.sorted.bam
  217  samtools sort Aligned_Baxter.bam -o Baxter.sorted.bam
  218  samtools sort Aligned_Chara.bam -o Chara.sorted.bam
  219  samtools sort Aligned_Drysdale.bam -o Drysdale.sorted.bam
  220  ls
  221  samtools index ACBarrie.sorted.bam
  222  samtools index Alsen.sorted.bam
  223  samtools index Baxter.sorted.bam
  224  samtools index Chara.sorted.bam
  225  samtools index Drysdale.sorted.bam
  226  ls
  227  nano VC.sh
  228  sudo apt install bcftools
  229  bash VC.sh
  230  ls
  231  mkdir VC_output2
  232  mv *.vcf VC_output2/
  233  ls
  234  cd GMap_output1
  235  ls
  236  cd ..
  237  mv *.bam GMap_output2/ && mv *.sam GMap_output2/
  238  ls
  239  mv *.bai GMap_output2
  240  ls
  241  cd trim_output1
  242  ls
  243  cd ..
  244  cd NEWFASTQ_Dataset
  245  ls
  246  cd ..
  247  mv *.html trim_output2/
  248  ls
  249  nano VC.sh
  250  ls
  251  mv ReferenceNEW.fasta Ref2/
  252  ls
  253  cd QC_output2
  254  ls
  255  cd ..
  256  cd trim_output1
  257  ls
  258  cd ..
  259  cd trim_output2
  260  ls
  261  cd ..
  262  mv fastp.json trim_output2/
  263  ls
  264  cd VC_output2
  265  ls
  266  cd ..
  267  mv *.fastq.gz trim_output2/
  268  ls
  269  cd GMap_output1
  270  ls
  271  cd ..
  272  mv ReferenceNEW.fasta.amb ReferenceNEW.fasta.ann ReferenceNEW.fasta.bwt ReferenceNEW.fasta.fai ReferenceNEW.fasta.pac ReferenceNEW.fasta.sa GMap_output2/
  273  ls
  274  pwd
  275  nano scriptpipeline.sh
  276  history > scriptpipeline.sh
