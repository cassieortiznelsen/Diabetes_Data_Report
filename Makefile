IMAGE_NAME = cassieortiznelsen/diabetes_data_report:latest

.PHONY: run clean build

run:
	@mkdir -p report
ifeq ($(OS),Windows_NT)
	@docker run --rm -v "/$(PWD)/report:/home/project/report" $(IMAGE_NAME)
else
	@docker run --rm -v "$(PWD)/report:/home/project/report" $(IMAGE_NAME)
endif

clean:
	@rm -rf report/*

build:
	@docker build -t $(IMAGE_NAME) .