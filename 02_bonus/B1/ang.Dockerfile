#MEAN stack 1
FROM node:6

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app

#clear cache and start installing boiler plates based on deps in package.json
RUN npm cache clean && npm install 
COPY . /usr/src/app
EXPOSE 4200
CMD ["npm","start"]