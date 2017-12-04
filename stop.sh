#!/bin/bash

sudo docker ps | grep stubby-quad9 | awk '{print $1}' | xargs sudo docker kill
