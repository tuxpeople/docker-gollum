FROM ruby:alpine3.10
MAINTAINER Adhityaa Chandrasekar <c.adhityaa@gmail.com>

RUN apk add --no-cache --virtual build-deps build-base icu-dev cmake \
&& apk add --no-cache icu-libs git \
&& gem install gollum -v 4.1.4 \
&& gem install github-markdown \
&& apk del build-deps

# create a volume and
WORKDIR /wiki

ENV GOLLUMARGS=""

ENTRYPOINT ["/bin/sh", "-c", "git init && gollum $GOLLUMARGS"]
EXPOSE 4567
