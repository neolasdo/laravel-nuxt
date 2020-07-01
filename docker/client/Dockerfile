FROM node:13.7.0-alpine

RUN apk update && apk add --no-cache --virtual .gyp python make g++ && \
    apk add yarn

ARG ENVIROMENT
ENV ENVIROMENT ${ENVIROMENT}

RUN mkdir /app
WORKDIR /app
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
