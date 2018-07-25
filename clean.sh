#!/bin/bash

IMG=${ARGS[0]:-rdoracle}

docker stop $IMG && docker rm $IMG || echo "not running"

rm -rf data/*

