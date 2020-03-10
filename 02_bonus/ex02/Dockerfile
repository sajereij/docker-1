FROM ruby:2.7

RUN mkdir -p /opt/app
RUN apt-get update -y && \
	apt-get upgrade -y && \
    apt-get install nodejs curl -y && \
    rm -rf /var/lib/apt/lists/* && \
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
	apt update -y && apt install yarn -y && \
	gem install rails bundler
WORKDIR /opt
RUN touch Gemfile && touch Gemfile.lock
RUN	rails new app
WORKDIR /opt/app
#EXPOSE 3000
#ONBUILD RUN bundle install && \ 
#    rake db:create && \
#    rake db:migrate && \ 
#    rake db:seed
#CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]

#docker build ex01 --no-cache -t ex02
#docker run --name newapp -it --rm -v $PWD/ex02:/opt/app -p 3000:3000 ex02