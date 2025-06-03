FROM ubuntu:22.04

RUN apt update && apt install -y \
    curl \
    git \
    wget \
    unzip \
    nano \
    bash \
    sudo \
    build-essential \
    software-properties-common \
    && apt clean

RUN useradd -m -s /bin/bash devuser && echo 'devuser ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER devuser
WORKDIR /home/devuser
