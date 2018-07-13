FROM ruby:alpine3.7
MAINTAINER Adhityaa Chandrasekar <c.adhityaa@gmail.com>

RUN apk add --no-cache --virtual build-deps build-base icu-dev cmake \
&& apk add --no-cache icu-libs git \
&& gem install gollum github-markdown \
&& apk del build-deps

# create a volume and
WORKDIR /wiki

ENTRYPOINT ["/bin/sh", "-c", "git init && gollum --port 8080 --live-preview"]
EXPOSE 8080
