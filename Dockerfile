FROM node:6.9.5
MAINTAINER Damian Dennis "damiandennis@gmail.com"

RUN apt-get update -y && apt-get install vim -y

RUN npm install -g pm2@2.1.4

RUN deluser www-data
RUN adduser --disabled-password --gecos "" www-data

COPY /scripts/start.sh ./
RUN chmod +x ./start.sh

CMD ./start.sh



