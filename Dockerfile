FROM ubuntu:16.10

RUN apt-get -y update

RUN apt-get -y install nodejs
RUN apt-get -y install npm
RUN apt-get -y install git
RUN ln -s `which nodejs` /usr/bin/node

WORKDIR /home

RUN git clone https://github.com/codedot/xmm.git

WORKDIR /home/xmm
RUN npm install

COPY xmm-config.json /home/bot/
WORKDIR /home/bot

ENTRYPOINT ["/bin/bash", "-c", "while date; do node /home/xmm/xmm -c /home/bot/xmm-config.json hedge fund; done 2>&1 | tee -a /home/bot/log.txt"]
