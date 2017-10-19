#!/bin/bash

bundle exec figaro install

exec 3<> config/application.yml

    echo "discord_bot_token: ${BOTTOKEN}" >&3
    echo "discord_client_id: ${CLIENTID}" >&3
    echo "redis_host: ${REDISHOST}" >&3
    echo "redis_port: ${REDISPORT}" >&3
    echo "redis_db: ${REDISDB}" >&3

exec 3>&-