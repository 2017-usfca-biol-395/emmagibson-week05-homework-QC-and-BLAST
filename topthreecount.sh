#!/bin/bash

# Emma Gibson egibson@dons.usfca.edu
# September 29, 2017
# a script to count the number of prominent species in each file
# I chose these species based on the top 3 from BLASTanalysis.sh

######### MAKE SURE YOU'VE RUN BLASTanalysis.sh BEFORE RUNNING THIS,
######### OR, UNCOMMENT THE NEXT LINE
#mkdir output/BLAST_summaries

# search for number of Solemya pervernicosa gill symbiont in each file,
# then put that output into a .txt
echo "counting popular species..."
for file in output/BLAST_results/*.csv
do
echo "Number of Solemya pervernicosa gill symbiont in $(basename -s .csv $file): $(cut -d, -f1 $file | grep -c "Solemya pervernicosa gill symbiont")"
done > output/BLAST_summaries/BLASTtopthree.txt

# for formatting
echo "##########################" >> output/BLAST_summaries/BLASTtopthree.txt

# search for Bartonella washoensis
for file in output/BLAST_results/*.csv
do
echo "Number of Bartonella washoensis in $(basename -s .csv $file): $(cut -d, -f1 $file | grep -c "Bartonella washoensis")"
done >> output/BLAST_summaries/BLASTtopthree.txt

# for formatting
echo "##########################" >> output/BLAST_summaries/BLASTtopthree.txt

# search for Bacteroidetes endosymbiont of Metaseiulus occidentalis
for file in output/BLAST_results/*.csv
do
echo "Number of Bacteroidetes endosymbiont of Metaseiulus occidentalis in $(basename -s .csv $file): $(cut -d, -f1 $file | grep -c "Bacteroidetes endosymbiont of Metaseiulus occidentalis")"
done >> output/BLAST_summaries/BLASTtopthree.txt
echo "counted popular species"

# I made three for loops because I wanted them to be grouped by species and 
# couldn't think of another way to do that while keeping nice formatting
