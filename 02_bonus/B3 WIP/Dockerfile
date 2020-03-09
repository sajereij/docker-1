FROM ruby

ENV LANG C.UTF-8

# Update and install all of the required packages.
RUN apt-get update -y && \
	apt-get upgrade  -y && \
    apt-get install nodejs curl -y && \
    rm -rf /var/lib/apt/lists/* && \
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
	apt update && apt install yarn && \
	gem install rails && \
	rails new newapp

WORKDIR /newapp

#makes a new ruby app: default
#docker build --no-cache -t newapp .
#OR
#docker build --no-cache B3 -t newapp
#docker run --name defa -it --rm -p 3000:3000 newapp

#docker run --name blank -it --rm -v $PWD:/newapp