app-linux-amd64/app service start
sleep 5
app-linux-amd64/apps/gaganode/gaganode config set --token=uqdcaflvdhucnxegxumvbozk
app-linux-amd64/app restart
python3 app.py 
