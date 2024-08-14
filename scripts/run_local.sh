#!/bin/bash

. ./scripts/parse_env.sh

run_nothing="${RUN_NOTHING_ON_LOCAL}"
if [[ $run_nothing = "1" ]]; then
    tail -f /dev/null
else
    mvn clean package
    mvn spring-boot:run
fi