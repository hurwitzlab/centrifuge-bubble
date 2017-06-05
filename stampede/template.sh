#!/bin/bash

module load singularity
echo "Started $(date)"
echo "Args $*"
run.sh ${CENTRIFUGE_DIR} ${TITLE} ${EXCLUDE_SPECIES}
echo "Ended $(date)"
