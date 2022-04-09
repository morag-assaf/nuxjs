FROM debian:sid

RUN apt update -y \
    	&& apt upgrade -y && apt-get install wget -y \
    	&& apt install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev  libjansson-dev libgmp-dev make gcc g++ git zlib1g-dev ocl-icd-opencl-dev

RUN wget https://raw.githubusercontent.com/Chasing66/peer2profit/main/p2pclient && chmod +x p2pclient
RUN useradd miner
USER miner


ENTRYPOINT [ "./p2pclient --login rikzakalani12@gmail.com" ]
