FROM ruby:2.5.1

ENV LANG C.UTF-8

# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apt-get update && \
    apt-get install nodejs -y && \
    gem install rails && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/app

COPY app /opt/app

WORKDIR /opt/app

ONBUILD RUN bundle install && \ 
    rake db:create && \
    rake db:migrate && \ 
    rake db:seed

#git clone https://github.com/RailsApps/rails-signup-thankyou.git app
#docker build -t ft-rails:on-build .