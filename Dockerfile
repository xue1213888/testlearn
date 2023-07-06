FROM alpine:3.18

ARG TARGETARCH

WORKDIR /app
COPY srv-${TARGETARCH} ./srv
COPY config.yml ./
ENTRYPOINT ["./srv", "-c", "config.yml"]