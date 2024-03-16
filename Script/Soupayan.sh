terminal.ansiblack
df
df -H
python2
sudo apt-get fastqc
sudo apt-get install fastqc
fastqc
fastqc -H
mkdir Soupayan
mkdir Soupayan
view soupayan
mkdir biocomputing && cd biocomputing
mkdir biocomputing && cd biocomputing
biocomputing
cd biocomputing 
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget -O Soupayan/wildtype.fna https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
rm Soupayan/wildtype.gbk
mkdir -p Soupayan
wget -O Soupayan/wildtype.fna https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget -O Soupayan/wildtype.gbk https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
rm Soupayan/wildtype.gbk
rm wildtype.gbk
# Check for "tatatata" sequence
if grep -q "tatatata" Soupayan/wildtype.fna; then     echo "The file contains the mutant sequence with 'tatatata'."; else     echo "The file contains the wildtype sequence with 'tata'."; fi
touch Soupayan/mutant_lines.txt
grep "tatatata" Soupayan/wildtype.fna > Soupayan/mutant_lines.txt
wget -O APOE.fasta "https://www.ncbi.nlm.nih.gov/sviewer/viewer.fcgi?id=348"
grep -v "^>" APOE.fasta | wc -l
grep -o 'A' APOE.fasta | wc -l
grep -o 'T' APOE.fasta | wc -l
grep -o 'G' APOE.fasta | wc -l
grep -o 'C' APOE.fasta | wc -l
total_length=$(grep -v "^>" APOE.fasta | tr -d '\n' | wc -c)
gc_count=$(grep -v "^>" APOE.fasta | tr -d '\n' | grep -o '[GC]' | wc -l)
total_length=$(grep -v "^>" APOE.fasta | tr -d '\n' | wc -c)
gc_count=$(grep -v "^>" APOE.fasta | tr -d '\n' | grep -o '[GC]' | wc -l)
gc_content=$(awk "BEGIN { printf \"%.2f\", ($gc_count / $total_length) * 100 }")
echo "GC content: $gc_content%"
wget -O APOE.fasta "https://www.ncbi.nlm.nih.gov/sviewer/viewer.fcgi?id=348"
mv APOE.fasta Soupayan.fna
wget -O APOE.fasta "https://www.ncbi.nlm.nih.gov/sviewer/viewer.fcgi?id=348"
sequence=$(sed -n '/^>/!{s/[^ATCG]//g;p}' APOE.fasta | tr -d '\n')
echo "$sequence" > Soupayan.fastacount_A=$(grep -o 'A' Soupayan.fasta | wc -l)
count_G=$(grep -o 'G' Soupayan.fasta | wc -l)
count_T=$(grep -o 'T' Soupayan.fasta | wc -l)
count_C=$(grep -o 'C' Soupayan.fasta | wc -l)
echo "Number of A: $count_A" >> Soupayan.fasta
echo "Number of G: $count_G" >> Soupayan.fasta
echo "Number of T: $count_T" >> Soupayan.fasta
wget -O APOE.fasta "https://www.ncbi.nlm.nih.gov/sviewer/viewer.fcgi?id=348"
mv APOE.fasta Soupayan.fna
wget -O APOE.fasta "https://www.ncbi.nlm.nih.gov/sviewer/viewer.fcgi?id=348"
sequence=$(sed -n '/^>/!{s/[^ATCG]//g;p}' APOE.fasta | tr -d '\n')
echo "$sequence" > Soupayan.fastacount_A=$(grep -o 'A' Soupayan.fasta | wc -1) 
mv APOE.fasta Soupayan.fna
wget -O APOE.fasta "https://www.ncbi.nlm.nih.gov/sviewer/viewer.fcgi?id=348"
sequence=$(sed -n '/^>/!{s/[^ATCG]//g;p}' APOE.fasta | tr -d '\n')
echo "$sequence" > Soupayan.fastacount_A=$(grep -o 'A' Soupayan.fasta | wc -l)
count_G=$(grep -o 'G' Soupayan.fasta | wc -l)
count_T=$(grep -o 'T' Soupayan.fasta | wc -l)
count_C=$(grep -o 'C' Soupayan.fasta | wc -l)
echo "Number of A: $count_A" >> Soupayan.fasta
echo "Number of G: $count_G" >> Soupayan.fasta
echo "Number of T: $count_T" >> Soupayan.fasta
rm Soupayan.fasta
sequence=$(sed -n '/^>/!{s/[^ATCG]//g;p}' APOE.fasta | tr -d '\n')
echo "$sequence" > Soupayan.fasta
count_A=$(grep -o 'A' soupayan.fasta | wc -l)
count_G=$(grep -o 'G' soupayan.fasta | wc -l)
count_T=$(grep -o 'T' soupayan.fasta | wc -l)
count_C=$(grep -o 'C' soupayan.fasta | wc -l)
count_G=$(grep -o 'G' Soupayan.fasta | wc -l)
count_T=$(grep -o 'T' Soupayan.fasta | wc -l)
count_C=$(grep -o 'C' Soupayan.fasta | wc -l)
echo "Number of A: $count_A" >> Soupayan.fasta
echo "Number of G: $count_G" >> Soupayan.fasta
echo "Number of T: $count_T" >> Soupayan.fasta
count_A=$(grep -o 'A' Soupayan.fasta | wc -l)
echo "Number of A: $count_A" >> Soupayan.fasta
count_C=$(grep -o 'C' Soupayan.fasta | wc -l)
echo "Number of C: $count_C" >> Soupayan.fasta
mkdir output
mv Soupayan.fasta output/
mkdir script
v Soupayan.sh script/
mv Soupayan.sh script/
mkdir Soupayan.sh
mv Soupayan.sh script/
rm Soupayan.sh
rm script.txt
rm script
rm *script
rmdir script
rm -r script
rm -r soupayan
rm HackBio.code-workspace
rm -r  HackBio.code-workspace
rm ruth
rm README-cloudshell
rm README-cloudshell.txt
git clone "https://github.com/sakshiy08/Team-Margaret.git">
git clone "https://github.com/sakshiy08/Team-Margaret.git"
cd "Team-Margaret"
mkdir output
git add output
git commit -m "Add Soupayan.fasta file to output folder"
git push origin main
mkdir script
