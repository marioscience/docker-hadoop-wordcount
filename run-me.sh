#!/bin/bash

docker build --tag wordcount .
docker run -it wordcount
