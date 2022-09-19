#Select the image for the docker build
FROM node:16

#Create app directory inside the image
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

#Bundle app source
COPY . .

EXPOSE 8080

CMD ["node", "server.js"]