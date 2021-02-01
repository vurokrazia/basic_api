FROM ruby:2.5.1-alpine3.7
RUN apk update && apk add bash
RUN mkdir -p /home/app
WORKDIR /home/app
COPY . .
RUN /bin/sh -c "apk add --no-cache bash"
