FROM alpine:3.2

ENV LANG C.UTF-8
ENV BUILD_PACKAGES bash curl-dev ruby-dev build-base sqlite-dev nodejs tzdata
ENV RUBY_PACKAGES ruby ruby-bundler ruby-io-console

RUN apk update && \
    apk upgrade && \
    apk add $BUILD_PACKAGES && \
    apk add $RUBY_PACKAGES && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /opt/app

COPY app /opt/app

WORKDIR /opt/app

ONBUILD RUN bundle install
ONBUILD RUN bundle exec rake db:create
ONBUILD RUN bundle exec rake db:migrate && bundle exec rake db:seed

#ONBUILD CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]
#to test: git clone https://github.com/mackenziechild/Todo-App.git app
#docker build B0 --no-cache -t ft-rails:on-build
#docker run --name rails -it --rm -p 3000:3000 app
