#!/bin/bash

git pull
cd image
sudo docker build -t stubby-quad9 .
