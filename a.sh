sudo app-linux-amd64/app service start
sleep 5
sudo app-linux-amd64/apps/gaganode/gaganode config set --token=uqdcaflvdhucnxegxumvbozk
sudo app-linux-amd64/app restart
sudo screen -dmS uam /bin/bash -c 'sudo p2pclient -l a3628688@gmail.com'
python3 app.py 
