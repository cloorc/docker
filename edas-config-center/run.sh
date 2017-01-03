#!/usr/bin/env bash
set -e

java ${SERVER_IP:+-Dserver.address.ip=$SERVER_IP} -jar edas-config-center.jar
