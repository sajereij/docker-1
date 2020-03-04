# C dev environment
FROM ubuntu

ENV LANG C.UTF-8

RUN apt-get update -y && \
	apt-get install -yq vim build-essential man git && \
	rm -rf /var/lib/apt/lists/* && \
	mkdir -p /home/satu/

WORKDIR /home/satu