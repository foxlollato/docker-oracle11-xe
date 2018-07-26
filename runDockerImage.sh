#!/bin/bash

if [ "$#" -eq 1 ]; then
docker run \
--shm-size=2g \
-p 1521:1521 -p 8080:8080 \
-e ORACLE_PWD=$1 \
oracle/database:11.2.0.2-xe
else    
docker run \
--shm-size=2g \
-p 1521:1521 -p 8080:8080 \
-v $1:/u01/app/oracle/oradata \
-e ORACLE_PWD=$2 \
oracle/database:11.2.0.2-xe
fi
