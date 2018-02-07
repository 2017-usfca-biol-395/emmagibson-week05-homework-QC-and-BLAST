#!/bin/bash

# Emma Gibson egibson@dons.usfca.edu
# September 29, 2017
# a script to create files with comparinf species between male and
# female test subjects

######### MAKE SURE YOU'VE RUN BLASTanalysis.sh BEFORE RUNNING THIS!
######### OR, UNCOMMENT THE NEXT LINE
#mkdir output/BLAST_summaries

# Prior to writing, I discovered that all of the male participants
# are odd numbers in the 90s, and all female participants are odd
# numbers in the 80s, using the commands:
# cut -f6,22 data/metadata/fierer_forensic_hand_mouse_SraRunTable.txt | grep "\\bmale\\b"
# cut -f6,22 data/metadata/fierer_forensic_hand_mouse_SraRunTable.txt | grep female

#create a summary file for species on female hands
echo "creating file for female subjects..."
cut -d, -f1 output/BLAST_results/ERR194228[1,3,5,7,9].csv | sort | uniq -c | sort -n > output/BLAST_summaries/female_subject_overview.txt
echo "created file for female subjects"

#create a summary file for species on male hands
echo "creating file for male subjects..."
cut -d, -f1 output/BLAST_results/ERR194229[1,3,5,7,9].csv | sort | uniq -c | sort -n > output/BLAST_summaries/male_subject_overview.txt
echo "created file for male subjects"
