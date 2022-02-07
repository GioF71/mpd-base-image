FROM ubuntu:focal-20220113 

RUN apt-get update && apt-get install mpd -y && rm -rf /var/lib/apt/lists/*

