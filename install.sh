#!/bin/sh

apk --update add --virtual build-dependencies \
  build-base \
  sqlite \
  sqlite-dev \
&& apk del build-dependencies

# install mailcatcher
gem install mailcatcher -v 0.6.5 --no-ri --no-rdoc
