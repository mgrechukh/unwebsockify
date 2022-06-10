#docker buildx build -f Dockerfile . --platform linux/arm,linux/arm64,linux/amd64 -t mgrechukh/unwebsockify:0.1 --push --progress=plain

FROM docker.io/library/python:3.10.5-slim
RUN uname -rs
RUN uname -a
WORKDIR /usr/src/app
RUN pip3 install --no-cache-dir websockets
COPY unwebsockify.py ./
ENTRYPOINT [ "python", "-u", "./unwebsockify.py" ]
