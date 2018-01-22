#!/bin/bash

echo "CENTRIFUGE_DIR  \"${CENTRIFUGE_DIR}\""
echo "TITLE           \"${TITLE}\""
echo "EXCLUDE_SPECIES \"${EXCLUDE_SPECIES}\""
echo "MIN_PROPORTION  \"${MIN_PROPORTION}\""

sh run.sh ${CENTRIFUGE_DIR} ${TITLE} ${EXCLUDE_SPECIES} ${MIN_PROPORTION}

rm -rf *.img
