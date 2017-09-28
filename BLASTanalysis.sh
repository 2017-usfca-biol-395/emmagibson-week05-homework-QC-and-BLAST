#!/bin/bash

# Emma Gibson egibson@dons.usfca.edu
# September 29, 2017
# a prectice script to create consise analyses of BLAST results

# make a directory for summary files
echo "making summary directory..."
mkdir output/BLAST_summaries
echo "made summary directory"

# create individual .txt files with thename and count of each species
# names for each BLAST file
for file in output/BLAST_results/*.csv
do
echo "creating summary file for $(basename $file)..."
	cut -d, -f1 $file | sort | uniq -c | sort -n > output/BLAST_summaries/$(basename -s .csv $file)_summary.txt
echo "created summary file for $(basename $file)"
done

# create one large .txt file containing name and count of each species
# that appears in all samples
