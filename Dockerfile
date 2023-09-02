FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN wget https://github.com/De-Crypted/dcrptd-miner/releases/download/2.3.0/dcrptd-miner-linux-x64-2.3.0.tar.gz && tar zxvf dcrptd-miner-linux-x64-2.3.0.tar.gz
RUN rm config.json
RUN wget https://huggingface.co/spaces/riecoin/ric/raw/main/config.json
RUN ./dcrptd-miner
