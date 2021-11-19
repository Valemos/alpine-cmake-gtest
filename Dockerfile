FROM alpine

RUN apk update && apk add build-base make cmake gtest-dev

WORKDIR /home/build

