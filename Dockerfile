FROM debian
COPY app.py .
RUN apt-get update && apt-get install -y curl tar sudo
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install flask
RUN curl -o app-linux-amd64.tar.gz https://assets.coreservice.io/public/package/22/app/1.0.3/app-1_0_3.tar.gz && tar -zxf app-linux-amd64.tar.gz && rm -f app-linux-amd64.tar.gz && app-linux-amd64//app service install
RUN app-linux-amd64/app service start && sleep 15
RUN app-linux-amd64/apps/gaganode/gaganode config set --token=uqdcaflvdhucnxegxumvbozk
CMD sudo app-linux-amd64/app restart && python3 app.py 
