#!/bin/bash

#SBATCH -A iPlant-Collabs
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 02:00:00
#SBATCH -p development
#SBATCH -J cbubble
#SBATCH --mail-type BEGIN,END,FAIL
#SBATCH --mail-user kyclark@email.arizona.edu

./centrifuge_bubble.r -d $SCRATCH/centrifuge/test/reports/ -o $SCRATCH/centrifuge-bubble-out -e "Homo sapiens, synthetic construct" -t "Pacific Ocean Virome"
