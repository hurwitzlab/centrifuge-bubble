APP = centrifuge-bubble-0.0.2
EMAIL = kyclark@email.arizona.edu

clean:
	find . \( -name \*.out -o -name \*.param \) -exec rm {} \;

up: clean
	copy-from-manifest.pl6 $(WORK)/$(APP)
#	files-upload -F $(WORK)/$(APP) kyclark/applications

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

