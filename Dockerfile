from ubuntu:focal

RUN apt-get update
RUN apt-get install mpd -y

RUN rm -rf /var/lib/apt/lists/*

