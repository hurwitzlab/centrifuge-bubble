TAG = hurwitzlab/centrifuge-bubble:0.0.1

img:
	docker build --no-cache --tag=$(TAG) .

shell:
	docker run -it $(TAG) bash

test:
	docker run --rm -v /data:/data $(TAG) plot.py -o /data/kyclark/centrifuge-out /data/kyclark/dolphin/test/Dolphin_1.fasta 

dolphin:
	docker run --rm -v /Users/kyclark/work/data:/data $(TAG) plot.py -o /data/centrifuge-bubble-out/bubble.png -q /data/dolphin/centrifuge-out/reports/

push: 
	docker push $(TAG)
