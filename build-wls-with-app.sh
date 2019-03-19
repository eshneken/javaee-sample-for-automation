#!/bin/bash

# build the WLS sample app
sudo docker build -t 132.145.151.129:5000/wls_sample_app .

# push the app to local docker repo
sudo docker push 132.145.151.129:5000/wls_sample_app
