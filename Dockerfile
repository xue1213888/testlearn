FROM alpine:3.18

WORKDIR /app
COPY srv ./
COPY config.yml ./
ENTRYPOINT ["./srv", "-c", "config.yml"]