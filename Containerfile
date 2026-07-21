FROM docker.io/library/ruby:3.4

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       build-essential redis-server redis-tools \
    && rm -rf /var/lib/apt/lists/*

RUN gem install bundler

WORKDIR /app
