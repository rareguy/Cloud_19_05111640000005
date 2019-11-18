python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
sudo docker rm -f pservice3
sudo docker run --name pservice3 -p 9992:5000 --env REDISADDR=127.0.0.1 phonebook-docker-2:1.0