FROM alpine:3.7

ENV HUGO_VERSION 0.42

# Install HUGO
RUN set -x && \
  apk add --update wget ca-certificates && \
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -O hugo-latest.tar.gz && \
  tar xzvf hugo-latest.tar.gz hugo && \
  rm -r hugo-latest.tar.gz && \
  install hugo /usr/bin/hugo && \
  apk del wget ca-certificates && \
  rm /var/cache/apk/*

ENTRYPOINT ["/usr/bin/hugo"]
