FROM alpine:3.18
ARG TARGETARCH=amd64

WORKDIR /app
COPY srv-${TARGETARCH} ./
COPY config.yml ./
RUN echo 'ARCH: ${TARGETARCH}'
ENTRYPOINT ["./srv-${TARGETARCH}", "-c", "config.yml"]