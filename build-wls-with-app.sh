#!/bin/bash

# build the WLS sample app
docker build -t 129.213.60.3:5000/wls_sample_app .

# push the app to local docker repo
docker push 129.213.60.3:5000/wls_sample_app
