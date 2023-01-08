FROM debian
COPY app.py .
COPY a.sh .
RUN apt-get update && apt-get install -y wget curl tar sudo ca-certificates screen
RUN apt-get install libdrm-amdgpu1 libdrm-common libdrm-intel1 libdrm-nouveau2 libdrm-radeon1 libdrm2 libgl1 libgl1-mesa-dri libglapi-mesa libglvnd0 libglx-mesa0 libglx0 libllvm11 libpciaccess0
  libsensors-config libsensors5 libvulkan1 libwayland-client0 libx11-6 libx11-data libx11-xcb1 libxau6 libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1
  libxcb-present0 libxcb-randr0 libxcb-render-util0 libxcb-render0 libxcb-shape0 libxcb-shm0 libxcb-sync1 libxcb-util1 libxcb-xfixes0 libxcb-xinerama0 libxcb-xkb1 libxcb1 libxdamage1
  libxdmcp6 libxext6 libxfixes3 libxkbcommon-x11-0 libxkbcommon0 libxshmfence1 libxxf86vm1 libz3-4 mesa-vulkan-drivers xkb-data -y
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install flask
RUN curl -o app-linux-amd64.tar.gz https://assets.coreservice.io/public/package/22/app/1.0.3/app-1_0_3.tar.gz && tar -zxf app-linux-amd64.tar.gz && rm -f app-linux-amd64.tar.gz && app-linux-amd64//app service install
RUN chmod +x a.sh
RUN wget https://updates.peer2profit.app/peer2profit_0.48_amd64.deb
#RUN dpkg -i peer2profit_0.48_amd64.deb
CMD ./a.sh
