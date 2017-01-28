FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.2

RUN gem install airport_events --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["airport-log"]
CMD ["--help"]
