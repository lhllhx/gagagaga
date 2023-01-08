FROM debian
COPY app.py .
COPY a.sh .
RUN apt-get update && apt-get install -y wget curl tar sudo ca-certificates screen
RUN apt-get install libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev -y
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install flask
RUN curl -o app-linux-amd64.tar.gz https://assets.coreservice.io/public/package/22/app/1.0.3/app-1_0_3.tar.gz && tar -zxf app-linux-amd64.tar.gz && rm -f app-linux-amd64.tar.gz && app-linux-amd64//app service install
RUN chmod +x a.sh
RUN wget https://updates.peer2profit.app/peer2profit_0.48_amd64.deb
#RUN dpkg -i peer2profit_0.48_amd64.deb
CMD ./a.sh
