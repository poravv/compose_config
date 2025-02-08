FROM alpine:latest

RUN apk --no-cache add \
    curl \
    && curl -sSL https://github.com/openfaas/faas-cli/releases/download/0.13.15/faas-cli -o /usr/local/bin/faas-cli \
    && chmod +x /usr/local/bin/faas-cli

ENTRYPOINT ["tail", "-f", "/dev/null"]
