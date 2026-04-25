FROM debian:latest

RUN apt update && apt install -y \
    git python3 python3-pip sudo \
    gcc-arm-none-eabi binutils-arm-none-eabi \
    avr-libc gcc-avr binutils-avr \
    dfu-programmer dfu-util dos2unix \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install qmk appdirs --break-system-packages

WORKDIR /root
