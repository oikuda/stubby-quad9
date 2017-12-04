#!/bin/bash

docker ps | grep oikuda/stubby-quad9 | awk '{print $1}' | xargs docker kill
