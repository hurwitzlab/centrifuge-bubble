APP = centrifuge-bubble-0.0.1
EMAIL = kyclark@email.arizona.edu
SINGULARITY = /usr/local/bin/singularity
IMAGE_NAME = $(APP).img

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

img:
	rm -f $(IMAGE_NAME)
	sudo $(SINGULARITY) create --size 2000 $(IMAGE_NAME)
	sudo $(SINGULARITY) bootstrap $(IMAGE_NAME) image.def

run:
	$(SINGULARITY) run $(IMAGE_NAME)

shell:
	sudo $(SINGULARITY) shell --writable -s /bin/bash $(IMAGE_NAME) 
	#sudo $(SINGULARITY) shell --writable -B $(PWD):/data -s /bin/bash $(IMAGE_NAME) 

stest:
	run.sh -d test/reports -o test -e "Homo sapiens, synthetic construct" -t "Pacific Ocean Virome"

scp:
	scp $(IMAGE_NAME) stampede:/work/03137/kyclark/$(APP)/stampede
