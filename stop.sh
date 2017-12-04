#!/bin/bash

docker ps | grep stubby-quad9 | awk '{print $1}' | xargs docker kill
