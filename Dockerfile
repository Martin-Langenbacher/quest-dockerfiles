# Datai Dockerfile
FROM ubuntu:18.04
LABEL maintainer "name@somehost.com"
RUN apt-get update && \
    apt-get intall -y joe && \
    apt-get clean && \
rm -rf /var/lib/apt/lists/*
CMD["/bin/bash"]


