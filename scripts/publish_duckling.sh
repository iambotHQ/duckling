#!/bin/bash
set -e

start_path=`pwd`
cd "$(dirname "$0")"
. ./version.sh
cd ..

docker build -t docker.iambot.chat/iambot-duckling:${version} .
docker push docker.iambot.chat/iambot-duckling:${version}

cd $start_path

