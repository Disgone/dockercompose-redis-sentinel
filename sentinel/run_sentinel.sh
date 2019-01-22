#!/bin/sh

echo "hello from run_sentinel"
echo "SENTINEL_QUORUM=$SENTINEL_QUORUM"
echo "SENTINEL_DOWN_THRESHOLD=$SENTINEL_DOWN_THRESHOLD"
echo "SENTINEL_FAILOVER_THRESHOLD=$SENTINEL_FAILOVER_THRESHOLD"

sed -i "s/%SENTINEL_QUORUM%/$SENTINEL_QUORUM/g" /etc/redis/sentinel.conf
sed -i "s/%SENTINEL_DOWN_THRESHOLD%/$SENTINEL_DOWN_THRESHOLD/g" /etc/redis/sentinel.conf
sed -i "s/%SENTINEL_FAILOVER_THRESHOLD%/$SENTINEL_FAILOVER_THRESHOLD/g" /etc/redis/sentinel.conf

redis-server /etc/redis/sentinel.conf --sentinel