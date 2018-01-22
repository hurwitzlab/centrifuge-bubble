.PHONY: clean up app test job jobs-template jobs-submit stest

APP = centrifuge-bubble-0.0.3
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
	jobs-submit -F job.json

jobs-template:
	jobs-template $(APP) > job.json

jobs-submit:
	jobs-submit -F job.json

stest:
	run.sh -d test/reports -o test-out -e "Homo sapiens, synthetic construct" -t "Pacific Ocean Virome"
