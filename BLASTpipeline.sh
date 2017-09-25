#!/bin/bash

# Emma Gibson egibson@dons.usfca.edu
# September 27, 2017
# Practice script to run a BLAST pipeline

# check for BLASTDB variable, and sets appropriate variables if there isn't one
if [ -z ${BLASTDB} ]; then source /home/.bashrc; export PATH; export BLASTDB; fi


# download list of files in the run table to raw_data directory
# the pipe and 'tail -n +2' excludes the first line
echo "downloading raw data..."
for SRA_number in $(cut -f 6 data/metadata/fierer_forensic_hand_mouse_SraRunTable.txt | tail -n +2)
do
    fastq-dump -v $SRA_number -O data/raw_data
done
echo "downloaded raw data"

# create QC reports for each run
echo fastqc data/raw_data/*.fastq --outdir=output/fastqc

# make directory for trimmed sequences and trimmed .fastas
echo "making trimmed sequence directories..."
mkdir data/trimmed_seqs data/trimmed_fasta output/BLAST_results
echo "made trimmed sequence directories"

# trim sequences based on quality scores
# decided not to use $@ because this script has multiple for loops
echo "trimming .fastq files..."
for file in data/raw_data/*.fastq
do 
	TrimmomaticSE -threads 2 -phred33 $file data/trimmed_seqs/$(basename -s .fastq $file).trim.fastq LEADING:5 TRAILING:5 SLIDINGWINDOW:8:25 MINLEN:150
done
echo "trimmed .fastq files"

# convert fastq files to fasta files for BLAST
echo "creating .fasta copies of trimmed sequences..."
for trimmed in data/trimmed_seqs/*.trim.fastq
do
	bioawk -c fastx '{print ">"$name"\n"$seq}' $trimmed > data/trimmed_fasta/$(basename -s .fastq $trimmed).fasta
done
echo "created .fasta copies of trimmed sequences"

# search BLAST for sequence matches for cleaned .fastas
echo "searching BLAST database for sequence matches..."
for fasta_seq in data/trimmed_fasta/*.trim.fasta
do
	blastn -db /blast-db/nt -num_threads 2 -outfmt '10 sscinames std' -out output/BLAST_results/$(basename -s .trim.fasta $fasta_seq).csv -max_target_seqs 1 -negative_gilist /blast-db/2017-09-21_GenBank_Environmental_Uncultured_to_Exclude.txt -query $fasta_seq
done
echo "searched BLAST database for sequence matches"
