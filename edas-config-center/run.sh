#!/usr/bin/env bash
set -e

java ${SERVER_IP:+-Daddress.server.ip=$SERVER_IP} -jar edas-config-center.jar
