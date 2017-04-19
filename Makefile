.PHONY: all build bash run
NAME=pdflatex
AUTHOR=belooussov
VERSION=$(shell date +'%Y%m%d.0')
FULLDOCKERNAME=$(AUTHOR)/$(NAME):$(VERSION)
all: run

build:
	docker build --no-cache=false -t $(FULLDOCKERNAME) .
	@# and only now tag the built image as the "latest"
	docker tag $(FULLDOCKERNAME) $(AUTHOR)/$(NAME):latest

run:
	docker run -ti -v `pwd`:/workspace belooussov/pdflatex:latest

bash:
	docker run -it --entrypoint /bin/bash $(AUTHOR)/$(NAME):latest
