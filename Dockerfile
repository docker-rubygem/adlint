FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.6.12

RUN gem install adlint --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["adlint"]
CMD ["--help"]
