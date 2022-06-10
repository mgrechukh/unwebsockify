IMAGE_TAG ?= $(shell git describe)

image: 
	docker buildx build -f Dockerfile . --platform linux/arm,linux/arm64,linux/amd64 -t mgrechukh/unwebsockify:$(IMAGE_TAG) --push --progress=plain

.PHONY: image
all: image

