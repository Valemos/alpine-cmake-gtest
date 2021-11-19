FROM alpine

ONBUILD RUN apk update
ONBUILD RUN apk add gcc make cmake gtest

