#!/bin/bash

set -u

IMG="/work/05066/imicrobe/singularity/centrifuge-bubble-0.0.6.img"

singularity run "$IMG" "$@"
