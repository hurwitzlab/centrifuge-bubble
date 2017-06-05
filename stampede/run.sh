#!/bin/bash

set -u

CENTRIFUGE_DIR=""
TITLE="Centrifuge bubble" 
EXCLUDE_SPECIES=""
OUT_DIR=$(pwd)

function HELP() {
  printf "Usage:\n  %s -d CENTRIFUGE_DIR\n\n" "$(basename "$0")"

  echo "Required arguments:"
  echo " -d CENTRIFUGE_DIR"
  echo ""
  echo "Options:"
  echo " -t TITLE ($TITLE)"
  echo " -o OUT_DIR ($OUT_DIR)"
  echo " -e EXCLUDE_SPECIES"
  echo ""
  exit 0
}

#
# Show HELP if no arguments
#
[[ $# -eq 0 ]] && HELP

while getopts :d:e:o:t:h OPT; do
  case $OPT in
    d)
      CENTRIFUGE_DIR="$OPTARG"
      ;;
    h)
      HELP
      ;;
    e)
      EXCLUDE_SPECIES="$OPTARG"
      ;;
    o)
      OUT_DIR="$OPTARG"
      ;;
    t)
      TITLE="$OPTARG"
      ;;
    :)
      echo "Error: Option -$OPTARG requires an argument."
      exit 1
      ;;
    \?)
      echo "Error: Invalid option: -${OPTARG:-""}"
      exit 1
  esac
done

if [[ ! -d "$CENTRIFUGE_DIR" ]]; then 
  echo "Bad CENTRIFUGE_DIR ($CENTRIFUGE_DIR)"
  exit 1
fi

if [[ ! -o "$OUT_DIR" ]]; then 
  mkdir -p "$OUT_DIR"
fi

ARGS=(-d "$CENTRIFUGE_DIR" -o "$OUT_DIR" -t "$TITLE")

if [[ -n "$EXCLUDE_SPECIES" ]]; then
  ARGS+=(-e "$EXCLUDE_SPECIES")
fi

singularity run centrifuge-bubble-0.0.1.img "${ARGS[@]}"
