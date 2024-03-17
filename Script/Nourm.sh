    1  ls
    2  autorun.sh
    3  ./autorun.sh
    4  sudo apt update
    5  sudo apt install -y build-essential linux-headers-$(uname -r)
    6  mkdir NourM
    7  mkdir NourM/biocomputing && cd NourM/biocomputing
    8  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
    9  sudo mv wildtype.fna /NourM
   10  rm wildtype.gbk.1
   11  cd /NourM
   12  cd ../NourM/
   13  nano detectmutant.sh
   14  chmod +x detectmutant.sh
   15  ./detectmutant.sh
   16  nano detectmutant.sh
   17  chmod +x detectmutant.sh
   18  ./detectmutant.sh
   19  nano detectmutant.sh
   20  chmod +x detectmutant.sh
   21  ./detectmutant.sh
   22  cd ../NourM/
   23  ls
   24  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
   25  ls
   26  nano detectmutant.sh
   27  chmod +x detectmutant.sh
   28  ./detectmutant.sh
   29  ls
   30  sudo rm -r detectmutant.sh
   31  sudo rm -r wildtype.fna
   32  sudo rm -r wildtype.gbk
   33  ls
   34  cd /home/manuo
   35  ls
   36  sudo rm -r NourM
   37  LS
   38  ls
   39  clear
   40  mkdir Nour
   41  mkdir Nour/biocomputing && cd Nour/biocomputing
   42  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
   43  ls
   44  mv wildtype.fna /Nour
   45  sudo mv wildtype.fna /Nour
   46  ls
   47  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
   48  ls
   49  rm wildtype.gbk.1
   50  ls
   51  nano detectmutant.sh
   52  chmod +x detectmutant.sh
   53  ./detectmutant.sh
   54  grep "tatatata" "wildtype.fna" > "mutant_lines.txt"
   55  wget -O BRCA1.fasta "https://www.ncbi.nlm.nih.gov/nuccore/NM_001407571.1?report=fasta"
   56  grep -v '^>' BRCA1.fasta | wc -l
   57  grep -o 'A' BRCA1.fasta | wc -l
   58  grep -o 'G' BRCA1.fasta | wc -l
   59  grep -o 'C' BRCA1.fasta | wc -l
   60  grep -o 'T' BRCA1.fasta | wc -l
   61  nano GC.sh
   62  chmod +x GC.sh
   63  ./GC.sh BRCA1.fasta
   64  touch Nour.fasta
   65  echo "Number of A: $(grep -o 'A' BRCA1.fasta | wc -l)" >> Nour.fasta
   66  echo "Number of G: $(grep -o 'G' BRCA1.fasta | wc -l)" >> Nour.fasta
   67  echo "Number of C: $(grep -o 'C' BRCA1.fasta | wc -l)" >> Nour.fasta
   68  echo "Number of T: $(grep -o 'T' BRCA1.fasta | wc -l)" >> Nour.fasta
   69  ls
   70  history > Nourm.sh
