.PHONY: clean up app test job template stest

APP = centrifuge-bubble-0.0.6
EMAIL = kyclark@email.arizona.edu

clean:
	find . \( -name \*.out -o -name \*.param \) -exec rm {} \;

up: clean
	copy_from_manifest.py

app:
	apps-addupdate -F app.json

test: clean
	sbatch test.sh

job:
	tapis jobs submit -F job.json

template:
	jobs-template -A $(APP) > job.json

stest:
	run.sh -d test/reports -o test-out -e "Homo sapiens, synthetic construct" -t "Pacific Ocean Virome"
