from ubuntu:focal

ENV UNAME mpd

RUN apt-get update
RUN apt-get install mpd -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install pulseaudio-utils -y

RUN rm -rf /var/lib/apt/lists/*

