#!/bin/bash
#this is bash
token=$(curl -s 'http://127.0.0.1:9990/auth' -X POST -d '{"username": "leomessi", "password": "kaoskakimerah123"}' | \
    python3 -c "import sys, json; print(json.load(sys.stdin)['token'])")
curl -s 'http://127.0.0.1:9990/phonebook/c339df66-04d1-11ea-a7f5-c9aa0ab4e96b' -H "Authorization:${token}" | python3 -c "import sys, json; print('response status: ' + json.loads(sys.stdin)['status']); print('response data: ' + json.loads(sys.stdin)['data'])"

token2=$(curl -s 'http://127.0.0.1:9991/auth' -X POST -d '{"username": "leomessi", "password": "kaoskakimerah123"}' | \
    python3 -c "import sys, json; print(json.load(sys.stdin)['token'])")
curl -s 'http://127.0.0.1:9991/phonebook/c339df66-04d1-11ea-a7f5-c9aa0ab4e96b' -H "Authorization:${token2}" | python3 -c "import sys, json; print('response status: ' + json.loads(sys.stdin)['status']); print('response data: ' + json.loads(sys.stdin)['data'])"

token3=$(curl -s 'http://127.0.0.1:9992/auth' -X POST -d '{"username": "leomessi", "password": "kaoskakimerah123"}' | \
    python3 -c "import sys, json; print(json.load(sys.stdin)['token'])")
curl -s 'http://127.0.0.1:9992/phonebook/c339df66-04d1-11ea-a7f5-c9aa0ab4e96b' -H "Authorization:${token3}" | python3 -c "import sys, json; print('response status: ' + json.loads(sys.stdin)['status']); print('response data: ' + json.loads(sys.stdin)['data'])"