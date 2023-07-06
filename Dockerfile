FROM alpine:3.18

ARG TARGETARCH

RUN apk update && apk add tzdata
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/Shanghai" > /etc/timezone

WORKDIR /app
COPY srv-${TARGETARCH} ./srv
COPY config.yml ./
ENTRYPOINT ["./srv", "-c", "config.yml"]