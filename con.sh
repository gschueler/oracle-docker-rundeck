#!/bin/bash

IMG=${ARGS[0]:-rdora11gxe}

docker exec -ti "$IMG" sqlplus sys/RUNDECK_PASS@//localhost:1521/XE as sysdba