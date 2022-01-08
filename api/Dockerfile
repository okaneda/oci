FROM python:3.8.7-alpine3.13

MAINTAINER "info@hiddenclouds.io"
USER root
WORKDIR /root

COPY ./v2beta.linux64.sh $(pwd)/

RUN apk update && \
apk add --no-cache wget && \
apk add --no-cache bash && \
apk add --upgrade jq && \
jq --version && \
apk add yq && \
apk add build-base && \
apk add --update coreutils && \
apk add curl && \
apk add tree

RUN chmod +x $(pwd)/v2beta.linux64.sh
ENTRYPOINT ["./v2beta.linux64.sh"]
