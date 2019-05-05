FROM node:11.6.0-alpine

ENV environment=production

WORKDIR /usr/src/app

RUN apk update; npm install express

ADD app.js .

EXPOSE 3000

ENTRYPOINT [ "node", "app.js" ]