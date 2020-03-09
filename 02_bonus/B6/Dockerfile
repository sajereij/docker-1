FROM node:6

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app
#clear cache and start installing boiler plates based on deps in package.json
RUN npm cache clean && npm install 
COPY . /usr/src/app

EXPOSE 4200 3000 27017

VOLUME ["/data/db"]

WORKDIR /usr/src/app
CMD bash && service mongodb start 
CMD ["npm", "start"]


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
WORKDIR /mean
CMD ["concurrently"] ["service" ["nodemon", "server.js"]





#docker build --no-cache B1 -t newapp
#docker run --name mean -it --rm -p 3000:3000 -p 4200:4200 -p 27017:27017 newapp