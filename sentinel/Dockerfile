FROM redis:5.0.1-alpine
MAINTAINER Shaun Smith <disgone[@]gmail.com>

RUN apk update && apk upgrade && apk add --update \
    curl \
    bash \
    sed

ENV SENTINEL_QUORUM 2
ENV SENTINEL_DOWN_TIMEOUT 5000
ENV SENTINEL_FAILOVER_TIMEOUT 15000

ADD sentinel.conf /etc/redis/sentinel.conf

COPY run_sentinel.sh /run_sentinel.sh

RUN chmod +x /run_sentinel.sh

EXPOSE 26379

ENTRYPOINT [ "/run_sentinel.sh" ]