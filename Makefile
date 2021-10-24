#!/usr/bin/make

SHELL := /bin/bash
currentDir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
imageName := minica

CA_PATH ?= /opt/ca

build:
	docker buildx build \
	  --platform linux/arm/v6 \
	  -t ${imageName}  \
	  ${currentDir}

minica:
	docker run --platform linux/arm/v6 --mount src=${CA_PATH},target=/opt/localCA,type=bind minica ${MINICA_ARGS}
