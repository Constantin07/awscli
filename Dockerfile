FROM alpine:3.7
MAINTAINER colin.hom@coreos.com

RUN apk --no-cache --update add bash curl less groff jq python py-pip && \
  pip install --no-cache-dir --upgrade pip && \
  pip install --no-cache-dir awscli==1.14.42 s3cmd==2.0.1 https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-1.4-29.tar.gz && \
  mkdir /root/.aws && \
  aws --version && \
  s3cmd --version

ENTRYPOINT []
