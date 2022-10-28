FROM ghcr.io/linuxserver/baseimage-alpine:3.16-version-b612671e

# environment settings
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

# hadolint ignore=DL3028,DL3018
RUN apk add --no-cache --virtual build-deps build-base icu-dev cmake openssl-dev ruby-dev zlib-dev \
&& apk add --no-cache icu-libs git ruby \
&& gem install gollum github-markdown rdoc etc \
&& apk del build-deps

# add local files
COPY root/ /

# create a volume
WORKDIR /wiki

EXPOSE 8080