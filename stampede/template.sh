#!/bin/bash

echo "CENTRIFUGE_DIR  \"${CENTRIFUGE_DIR}\""
echo "TITLE           \"${TITLE}\""
echo "EXCLUDE_SPECIES \"${EXCLUDE_SPECIES}\""

sh run.sh ${CENTRIFUGE_DIR} ${TITLE} ${EXCLUDE_SPECIES}

rm -rf *.img
