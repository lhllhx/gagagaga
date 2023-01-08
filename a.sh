app-linux-amd64/app service start
sleep 5
app-linux-amd64/apps/gaganode/gaganode config set --token=uqdcaflvdhucnxegxumvbozk
app-linux-amd64/app restart
#screen -dmS uam /bin/bash -c 'p2pclient -l a3628688@gmail.com'
python3 app.py 
