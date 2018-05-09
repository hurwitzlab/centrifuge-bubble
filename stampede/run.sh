#!/bin/bash

echo "INVOCATION: " $0 $*

module load tacc-singularity

set -u

IMG="/work/05066/imicrobe/singularity/centrifuge-bubble-0.0.5.img"

singularity run "$IMG" "$@"
