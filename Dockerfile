FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.14.0

RUN gem install adlint --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["adlint"]
CMD ["--help"]
