FROM ubuntu
RUN apt-get update -y && apt-get install -y curl wget gnupg
RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y mongodb-org nodejs
RUN apt-get autoremove
#RUN npm install -g @angular/cli
#RUN ng new mean-blog
#RUN cd mean-blog && ng serve
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/
WORKDIR /opt/app
RUN npm install express body-parser mongoose nodemon concurrently --save
ADD mean-blog/ /opt/app

ENTRYPOINT bash
#CMD ["npm", "start"]