#!/bin/bash -l
 
#SBATCH -A snic2017-7-419
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 1-00:00:00
#SBATCH -J cr-testdata
#SBATCH -M snowy
#SBATCH --mail-type=ALL

for f in /proj/uppstore2017262/nobackup/projects/pinhassi_sequencing/J.Pinhassi_18_06/P12052/P12052_32[01]/*/*/*.fastq.gz; do
  echo "--> $(basename $f) <--"
  gunzip -c $f | head -n 1000000 | gzip -c > $(basename $f)
done
