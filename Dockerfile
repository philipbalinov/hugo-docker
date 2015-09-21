FROM alpine:3.1

# Install HUGO
RUN set -x && \
  apk add --update wget ca-certificates && \
  wget https://github.com/spf13/hugo/releases/download/v0.14/hugo_0.14_linux_amd64.tar.gz && \
  tar xzf hugo_0.14_linux_amd64.tar.gz && \
  rm -r hugo_0.14_linux_amd64.tar.gz && \
  mv hugo_0.14_linux_amd64/hugo_0.14_linux_amd64 /usr/bin/hugo && \
  rm -r hugo_0.14_linux_amd64 && \
  apk del wget ca-certificates && \
  rm /var/cache/apk/*

ENTRYPOINT ["/usr/bin/hugo"]
