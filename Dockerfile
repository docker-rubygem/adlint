FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.8.2

RUN gem install adlint --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["adlint"]
CMD ["--help"]
