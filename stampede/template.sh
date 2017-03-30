#!/bin/bash

echo "Started $(date)"
ARGS="-d ${CENTRIFUGE_DIR}"

if [[ -z ${EXCLUDE_SPECIES} ]]; then
  ARGS="-e ${EXCLUDE_SPECIES}"
fi

if [[ -z ${TITLE} ]]; then
  ARGS="$ARGS -t ${TITLE}"
fi

echo "ARGS=$ARGS"
sh centrifuge_bubble.r $ARGS
echo "Ended $(date)"
