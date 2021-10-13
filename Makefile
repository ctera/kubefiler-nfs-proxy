# *** WARNING: Targets are meant to run in a build container - Use skipper make ***
IMAGE_NAME=kubefiler-nfs-proxy

all: build

build: force
	skipper build ${IMAGE_NAME}
	docker tag ${IMAGE_NAME}:$(shell git rev-parse HEAD) ${IMAGE_NAME}:last_build

force: