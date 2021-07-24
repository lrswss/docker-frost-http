#!/bin/sh
# 03/2021
docker -D build --platform linux/arm/v7 -t bettwanze/frost-server-http:1.14.0 .
