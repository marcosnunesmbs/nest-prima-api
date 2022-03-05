FROM node:lts-alpine

RUN apk add dos2unix

RUN apk add --no-cache bash

RUN dos2unix /entrypoint.sh

RUN npm install -g @nestjs/cli

USER node

WORKDIR /home/node/app
