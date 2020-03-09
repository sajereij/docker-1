# C dev environment
FROM debian

ENV LANG C.UTF-8

RUN apt-get update -y && \
	apt-get install -yq vim build-essential lldb man git && \
	rm -rf /var/lib/apt/lists/* && \
	mkdir -p /home/satu/
WORKDIR /home/satu
RUN	echo "int\tmain()\n{\n\treturn (0);\n}" >> main.c

#docker build --no-cache -t b0 .
#OR
#docker build B0 --no-cache -t b0
#docker run --name cenv -it --rm b0