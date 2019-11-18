python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
sudo docker rm -f pservice2
sudo docker run --name pservice2 -p 9991:5000 --env REDISADDR=127.0.0.1 phonebook-docker-2:1.0