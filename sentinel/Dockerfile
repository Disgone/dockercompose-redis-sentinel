FROM redis:5.0.3-alpine
MAINTAINER Shaun Smith <disgone[@]gmail.com>

RUN apk update && apk upgrade && apk add --update \
    curl \
    bash \
    sed

ARG SENTINEL_QUORUM=2
ARG SENTINEL_DOWN_THRESHOLD=5000
ARG SENTINEL_FAILOVER_THRESHOLD=15000

ENV SENTINEL_QUORUM $SENTINEL_QUORUM
ENV SENTINEL_DOWN_THRESHOLD $SENTINEL_DOWN_THRESHOLD
ENV SENTINEL_FAILOVER_THRESHOLD $SENTINEL_FAILOVER_THRESHOLD

COPY sentinel.conf /etc/redis/sentinel.conf
COPY run_sentinel.sh /usr/local/bin/run_sentinel.sh

RUN chmod +x /usr/local/bin/run_sentinel.sh

EXPOSE 26379

ENTRYPOINT [ "run_sentinel.sh" ]