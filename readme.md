# Docker compose for Redis Sentinel

This is a docker compose script for creating a redis group of 1 master, 1 slave and 3 sentinels to demo sentinel failover.

````
docker-compose up --scale redis-sentinel=3
````