FROM debian
COPY app.py .
RUN apt-get update && apt-get install -y curl tar 
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
Run pip3 install flask
RUN curl -o app-linux-amd64.tar.gz https://assets.coreservice.io/public/package/22/app/1.0.3/app-1_0_3.tar.gz && tar -zxf app-linux-amd64.tar.gz && rm -f app-linux-amd64.tar.gz && cd ./app-linux-amd64 && sudo ./app service install
RUN app-linux-amd64/app service start && sleep 5
RUN app-linux-amd64/apps/gaganode/gaganode config set --token=uqdcaflvdhucnxegxumvbozk
RUN app-linux-amd64/app restart
CMD python3 app.py && app-linux-amd64/app restart