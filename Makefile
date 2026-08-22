ghcr.io/rodrigorootrj/operator-echo-sha256:latest
REPO=ghcr.io/rodrigorootrj
PROJETO=operator-echo-sha256
VERSION=$(shell cat version)
TAG=${REPO}/${PROJETO}:${VERSION}

echo:
	@echo ${TAG}
build:
	@docker build . -t ${TAG}
shell:
	@docker run -it --entrypoint sh ${TAG}