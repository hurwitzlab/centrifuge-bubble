#!/bin/bash

#SBATCH -A iPlant-Collabs
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 02:00:00
#SBATCH -p development
#SBATCH -J cbubble
#SBATCH --mail-type BEGIN,END,FAIL
#SBATCH --mail-user kyclark@email.arizona.edu

IMG="/work/05066/imicrobe/singularity/centrifuge-bubble-0.0.6.img"

singularity run -B $SCRATCH/centrifuge/test:/data $IMG -d /data/reports -o /data/out -e "Homo sapiens, synthetic construct" -t "Pacific Ocean Virome"
