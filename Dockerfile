FROM alpine:3.18

WORKDIR /app
COPY srv-amd64 ./
COPY config.yml ./
ENTRYPOINT ["./srv-amd64", "-c", "config.yml"]