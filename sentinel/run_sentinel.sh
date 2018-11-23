#!/bin/sh

echo "SENTINEL_QUORUM=$SENTINEL_QUORUM"
echo "SENTINEL_DOWN_TIMEOUT=$SENTINEL_DOWN_TIMEOUT"
echo "SENTINEL_FAILOVER_TIMEOUT=$SENTINEL_FAILOVER_TIMEOUT"

sed -i "s/%SENTINEL_QUORUM%/$SENTINEL_QUORUM/g" /etc/redis/sentinel.conf
sed -i "s/%SENTINEL_DOWN_TIMEOUT%/$SENTINEL_DOWN_TIMEOUT/g" /etc/redis/sentinel.conf
sed -i "s/%SENTINEL_FAILOVER_TIMEOUT%/$SENTINEL_FAILOVER_TIMEOUT/g" /etc/redis/sentinel.conf

redis-sentinel /etc/redis/sentinel.conf