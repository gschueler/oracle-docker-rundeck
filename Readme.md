Readme
========

Build a docker 11g R2 Express Edition (11.2.0.2) docker image, following instructions here:

https://github.com/oracle/docker-images/tree/master/OracleDatabase/SingleInstance

you must download the rpm.zip from here http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html

you will build a `oracle/database:11.2.0.2-xe` image

Run
=========


	docker run -d \
		--shm-size=2g \
		-p 1521:1521 -p 8080:8080 \
		-e ORACLE_PWD=RUNDECK_PASS \
		-v $PWD/data:/u01/app/oracle/oradata \
		-v $PWD/sql:/u01/app/oracle/scripts/startup \
		oracle/database:11.2.0.2-xe


Client connect
==========

using `sqlplus`, using the running docker image name from above as `$IMG`:

	docker exec -ti $IMG sqlplus sys/RUNDECK_PASS@//localhost:1521/XE as sysdba