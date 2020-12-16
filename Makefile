.PHONY: all deploy clean help
all: help
build:
	@docker build -t jenkins-demo .
deploy:
	@docker run -d --cap-add=ALL --name="jenkins-master" -p 8080:8080 -p 50000:50000 jenkins-demo
clean:
	@docker stop jenkins-master && docker rm jenkins-master
job:
	@sh ./lib/job-builder.sh
help:
	@echo "Usage:\n  For Jenkins-Master:\n    make build\n    make deploy\n    make clean\n  For Jenkins-Job:\n    make job"
