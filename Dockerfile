FROM fluent/fluentd:edge-debian

USER root

WORKDIR .

RUN apt-get update

RUN apt-get install -y build-essential

RUN fluent-gem install fluent-plugin-mongo --no-document

USER fluent