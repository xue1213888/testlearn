FROM alpine:3.18

WORKDIR /app
COPY srv-arm64 ./
COPY config.yml ./
ENTRYPOINT ["./srv-arm64", "-c", "config.yml"]