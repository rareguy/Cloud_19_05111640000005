#!/bin/bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
sudo docker rm -f pservice
sudo docker run --name pservice -p 9990:5000 --env REDISADDR=127.0.0.1 phonebook-docker-2:1.0