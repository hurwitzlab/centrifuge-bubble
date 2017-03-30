APP = centrifuge-bubble-0.0.1
EMAIL = kyclark@email.arizona.edu

clean:
	find . \( -name \*.out -o -name \*.param \) -exec rm {} \;

upload: clean
	files-upload -F $(WORK)/$(APP) kyclark/applications

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
