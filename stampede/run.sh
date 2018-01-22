#!/bin/bash

echo "INVOCATION: " $0 $*

module load tacc-singularity

set -u

IMG="centrifuge-bubble-0.0.3.img"

singularity run "$IMG" "$@"
