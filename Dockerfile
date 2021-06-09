# hadolint ignore=DL3007
FROM tdeutsch/baseimage-alpine:latest

# environment settings
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

# hadolint ignore=DL3028,DL3018
RUN apk add --no-cache --virtual build-deps build-base icu-dev cmake openssl-dev ruby-dev zlib-dev \
&& apk add --no-cache icu-libs git ruby \
&& gem install rdoc etc gollum github-markdown \
&& apk del build-deps

# add local files
COPY root/ /

# create a volume
WORKDIR /wiki

EXPOSE 8080