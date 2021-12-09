FROM python:3.8.7-alpine3.13

MAINTAINER "info@hiddenclouds.io"

USER root
WORKDIR /root

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

#RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

RUN curl -s -o $(pwd)/v2beta.linux64.sh https://raw.githubusercontent.com/okaneda/build/disty/scripts/api/v2beta.linux64.txt

RUN chmod +x $(pwd)/v2beta.linux64.sh

ENTRYPOINT ["./v2beta.linux64.sh"]
