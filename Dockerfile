ARG BASE_IMAGE
FROM ${BASE_IMAGE}

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && apt-get install mpd -y && rm -rf /var/lib/apt/lists/*

RUN mkdir /app
RUN mkdir /app/doc

COPY README.md /app/doc/MPD-BASE-IMAGE-README.doc
