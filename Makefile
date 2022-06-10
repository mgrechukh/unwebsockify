image: 
	docker buildx build -f Dockerfile . --platform linux/arm,linux/arm64,linux/amd64 -t mgrechukh/unwebsockify:0.1 --push --progress=plain

.PHONY: image
all: image

