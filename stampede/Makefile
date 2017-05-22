APP = centrifuge-bubble-0.0.1
EMAIL = kyclark@email.arizona.edu
SINGULARITY = /usr/local/bin/singularity
IMAGE_NAME = $(APP).img

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

img:
	rm -f $(IMAGE_NAME)
	sudo $(SINGULARITY) create --size 4000 $(IMAGE_NAME)
	sudo $(SINGULARITY) bootstrap $(IMAGE_NAME) image.def

run:
	$(SINGULARITY) run $(IMAGE_NAME)

shell:
	sudo $(SINGULARITY) shell --writable -B $(PWD):/usr/local -s /bin/bash $(IMAGE_NAME) 

stest:
	$(SINGULARITY) run -B test:/data $(IMAGE_NAME) -d /data/test/reports -o /data/out -e "Homo sapiens, synthetic construct" -t "Pacific Ocean Virome"
