IMG="/work/05066/imicrobe/singularity/centrifuge-bubble-0.0.6.img"

singularity exec "$IMG" plot.py ${QUERY} ${TITLE} ${EXCLUDE_SPECIES} ${MIN_PROPORTION} ${MAX_TAXA} ${TAX_RANK}
