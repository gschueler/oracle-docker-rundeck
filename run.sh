#!/bin/bash

docker run -d \
    --name rdora11gxe \
	--shm-size=2g \
	-p 1521:1521 -p 8080:8080 \
	-e ORACLE_PWD=RUNDECK_PASS \
	-v "$PWD/data":/u01/app/oracle/oradata \
	-v "$PWD/sql":/u01/app/oracle/scripts/startup \
	oracle/database:11.2.0.2-xe
