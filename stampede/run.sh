#!/bin/bash

set -u

module load singularity

IMG="centrifuge-bubble-0.0.2.img"

[[ -e "$IMG.xz" ]] && xz -d "$IMG.xz"

singularity run "$IMG" "$@"

#rm -rf "$IMG" 
