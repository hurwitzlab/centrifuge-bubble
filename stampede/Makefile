up:
	copy_from_manifest.py

app:
	tapis apps create -F app.json

job:
	tapis jobs submit -F job.json

template:
	jobs-template -A $(APP) > job.json

stest:
	run.sh -d test/reports -o test-out -e "Homo sapiens, synthetic construct" -t "Pacific Ocean Virome"
