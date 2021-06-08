FROM ruby:alpine3.13

# hadolint ignore=DL3028,DL3018
RUN apk add --no-cache --virtual build-deps build-base icu-dev cmake openssl-dev \
&& apk add --no-cache icu-libs git \
&& gem install gollum github-markdown \
&& apk del build-deps

# create a volume and
WORKDIR /wiki

ENTRYPOINT ["/bin/sh", "-c", "git init && gollum --port 8080"]
EXPOSE 8080
