  210  cd ../../../
  211  history
  212  clear
  213  ls
  214  mkdir pipeline && cd pipeline
  215  mkdir rawdata_reads && cd rawdata_reads
  216  wget -O reference.fasta https://raw.githubusercontent.com/josoga2/yt-dataset/main/dataset/raw_reads/reference.fasta
  217  wget -O ACBarrie_R1.fastq.gz https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R1.fastq.gz
  218  wget -O ACBarrie_R2.fastq.gz https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/ACBarrie_R2.fastq.gz
  219  wget -O Alsen_R1.fastq.gz https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R1.fastq.gz
  220  wget -O Alsen_R2.fastq.gz https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Alsen_R2.fastq.gz
  221  wget -0 Baxter_R1.fastq.gz https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R1.fastq.gz
  222  wget -O Baxter_R1.fastq.gz https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R1.fastq.gz
  223  wget -O Baxter_R2.fastq.gz https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Baxter_R2.fastq.gz
  224  wget -O Chara_R1.fastq.gz https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R1.fastq.gz
  225  wget -O Chara_R2.fastq.gz https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Chara_R2.fastq.gz
  226  wget -O Drysdale_R1.fastq.gz https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R1.fastq.gz
  227  wget -O Drysdale_R2.fastq.gz https://github.com/josoga2/yt-dataset/raw/main/dataset/raw_reads/Drysdale_R2.fastq.gz
  228  ls
  229  ls lh
  230  #!/bin/bash
  231  mkdir -p fastqc_reports
  232  SAMPLES=(   "ACBarrie"   "Alsen"   "Baxter"   "Chara"   "Drysdale" )
  233  for SAMPLE in "${SAMPLES[@]}"; do fastqc    "${SAMPLE}_R1.fastq.gz" "${SAMPLE}_R2.fastq.gz" -o fastqc_reports; done
  234  ls
  235  cd fastqc_reports
  236  ls
  237  cd ..
  238  #!/bin/bash
  239  mkdir -p repaired_reads
  240  SAMPLES=(   "ACBarrie"   "Alsen"   "Baxter"   "Chara"   "Drysdale" )
  241  for SAMPLE in "${SAMPLES[@]}"; do   repair.sh -Xmx14g     in1="${SAMPLE}_R1.fastq.gz"     in2="${SAMPLE}_R2.fastq.gz"     out1="repaired_reads/${SAMPLE}_R1_repaired.fastq.gz"     out2="repaired_reads/${SAMPLE}_R2_repaired.fastq.gz"; done
  242  ls
  243  cd repaired_reads
  244  ls
  245  cd ..
  246  ls
  247  #!/bin/bash
  248  mkdir fastp_reports
  249  SAMPLES=(   "ACBarrie"   "Alsen"   "Baxter"   "Chara"   "Drysdale" )
  250  for SAMPLE in "${SAMPLES[@]}"; do   fastp     -i "$repaired_reads/${SAMPLE}_R1_repaired.fastq.gz"     -I "$repaired_reads/${SAMPLE}_R2_repaired.fastq.gz"     -o "fastp_reports/${SAMPLE}_R1.fastq.gz"     -O "fastp_reports/${SAMPLE}_R2.fastq.gz"     --html "fastp_reports/${SAMPLE}_fastp.html" ; done
  251  #!/bin/bash
  252  mkdir fastp_reports
  253  SAMPLES=(   "ACBarrie"   "Alsen"   "Baxter"   "Chara"   "Drysdale" )
  254  for SAMPLE in "${SAMPLES[@]}"; do   fastp     -i "repaired_reads/${SAMPLE}_R1_repaired.fastq.gz"     -I "repaired_reads/${SAMPLE}_R2_repaired.fastq.gz"     -o "fastp_reports/${SAMPLE}_R1.fastq.gz"     -O "fastp_reports/${SAMPLE}_R2.fastq.gz"     --html "fastp_reports/${SAMPLE}_fastp.html" ; done
  255  ls
  256  mkdir reference_reads
  257  mv reference.fasta ../reference_reads
  258  cd reference_reads
  259  ls
  260  cd ..
  261  ls
  262  cd reference_reads
  263  ls
  264  bwa index reference.fasta
  265  ls
  266  nano reference.fasta
  267  cd ..
  268  ls
  269  cd reference_reads
  270  wget -O reference.fasta https://raw.githubusercontent.com/josoga2/yt-dataset/main/dataset/raw_reads/reference.fasta
  271  ls
  272  bwa index reference.fasta
  273  ls
  274  cd ..
  275  ls
  276  #!/bin/bash
  277  SAMPLES=(   "ACBarrie"   "Alsen"   "Baxter"   "Chara"   "Drysdale" )
  278  for sample in "${SAMPLES[@]}"; do          INPUT_R1="repaired_reads/${sample}_R1_repaired.fastq.gz";     INPUT_R2="repaired_reads/${sample}_R2_repaired.fastq.gz";      OUTPUT_SAM="sam_files/${sample}.sam";     OUTPUT_BAM="bam_files/${sample}.bam";      bwa mem reference_reads/reference.fasta $INPUT_R1 $INPUT_R2 > $OUTPUT_SAM;      samtools view -bS $OUTPUT_SAM > $OUTPUT_BAM;      samtools sort $OUTPUT_BAM -o "${OUTPUT_BAM/.bam/_sorted.bam}" ; done
  279  mkdir sam_files && mkdir bam_files
  280  #!/bin/bash
  281  SAMPLES=(   "ACBarrie"   "Alsen"   "Baxter"   "Chara"   "Drysdale" )
  282  for sample in "${SAMPLES[@]}"; do          INPUT_R1="repaired_reads/${sample}_R1_repaired.fastq.gz";     INPUT_R2="repaired_reads/${sample}_R2_repaired.fastq.gz";      OUTPUT_SAM="sam_files/${sample}.sam";     OUTPUT_BAM="bam_files/${sample}.bam";      bwa mem reference_reads/reference.fasta $INPUT_R1 $INPUT_R2 > $OUTPUT_SAM;      samtools view -bS $OUTPUT_SAM > $OUTPUT_BAM;      samtools sort $OUTPUT_BAM -o "${OUTPUT_BAM/.bam/_sorted.bam}" ; done
  283  ls
  284  mkdir variant_files
  285  #!/bin/bash
  286  SAMPLES=(   "ACBarrie"   "Alsen"   "Baxter"   "Chara"   "Drysdale" )
  287  BAM_DIR="bam_files"
  288  OUTPUT_DIR="variant_files"
  289  for SAMPLE in "${SAMPLES[@]}" do;      BAM_FILE="${BAM_DIR}/${SAMPLE}.bam"
  290  done
  291  #!/bin/bash
  292  SAMPLES=(   "ACBarrie"   "Alsen"   "Baxter"   "Chara"   "Drysdale" )
  293  BAM_DIR="bam_files"
  294  OUTPUT_DIR="variant_files"
  295  mkdir -p "$OUTPUT_DIR"
  296  for SAMPLE in "${SAMPLES[@]}"; do     BAM_FILE="${BAM_DIR}/${SAMPLE}.bam";      OUTPUT_VCF="${OUTPUT_DIR}/${SAMPLE}.vcf";      bcftools mpileup -Ou -f reference_reads/reference.fasta "$BAM_FILE" | bcftools call -mv -Ov -o "$OUTPUT_VCF";      bcftools index "$OUTPUT_VCF"; done
  297  ls
  298  #!/bin/bash
  299  SAMPLES=(   "ACBarrie"   "Alsen"   "Baxter"   "Chara"   "Drysdale" )
  300  BAM_DIR="bam_files"
  301  OUTPUT_DIR="variant_files"
  302  mkdir -p "$OUTPUT_DIR"
  303  for SAMPLE in "${SAMPLES[@]}"; do     BAM_FILE="${BAM_DIR}/${SAMPLE}.bam";      SORTED_BAM="${BAM_DIR}/${SAMPLE}_sorted.bam";     OUTPUT_VCF="${OUTPUT_DIR}/${SAMPLE}.vcf";      samtools sort -o "$SORTED_BAM" "$BAM_FILE";      samtools index "$SORTED_BAM";      bcftools mpileup -Ou -f reference_reads/reference.fasta "$SORTED_BAM" | bcftools call -mv -Ov -o "$OUTPUT_VCF";      bcftools index "$OUTPUT_VCF"; done
  304  ls
  305  history 65 > pipelinescript2.sh
  306  nano pipelinescript2.sh
  307  history
  308  rm pipelinescript2.sh
  309  history 100 > pipelinescript2.sh
