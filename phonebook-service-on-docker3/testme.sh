var1=$(curl -s 'http://52.230.122.213:9990/auth' -X POST -d '{"username": "leomessi", "password": "kaoskakimerah123"}' | \
    python3 -c "import sys, json; print(json.load(sys.stdin)['token'])")
echo ${var1}
curl -s 'http://52.230.122.213:9990/phonebook' -H "Authorization:${var1}"

var2=$(curl -s 'http://52.230.122.213:9991/auth' -X POST -d '{"username": "rakitic", "password": "kaoskakimerah456"}' | \
    python3 -c "import sys, json; print(json.load(sys.stdin)['token'])")
echo ${var2}
curl -s 'http://52.230.122.213:9991/phonebook/c339df66-04d1-11ea-a7f5-c9aa0ab4e96b' -H "Authorization:${var2}"

var3=$(curl -s 'http://52.230.122.213:9992/auth' -X POST -d '{"username": "iniesta", "password": "kaoskakimerah789"}' | \
    python3 -c "import sys, json; print(json.load(sys.stdin)['token'])")
echo ${var3}
curl -s 'http://52.230.122.213:9992/phonebook/c339df66-04d1-11ea-a7f5-c9aa0ab4e96b' -H "Authorization:${var3}"