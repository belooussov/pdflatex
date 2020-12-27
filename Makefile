.PHONY: all build bash run push

NAME=pdflatex
AUTHOR=belooussov
VERSION=$(shell date +'%Y%m%d.0')

all: run

build:
	docker build --no-cache=false -t $(AUTHOR)/$(NAME):$(VERSION) .
	docker tag $(AUTHOR)/$(NAME):$(VERSION) $(AUTHOR)/$(NAME):latest

run:
	docker run -it -v `pwd`:/workspace $(AUTHOR)/$(NAME):latest

bash:
	docker run -it --entrypoint /bin/bash $(AUTHOR)/$(NAME):latest

push:
	docker push $(AUTHOR)/$(NAME):latest
