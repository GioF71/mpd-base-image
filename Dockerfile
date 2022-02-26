ARG BASE_IMAGE
FROM ${BASE_IMAGE} AS base

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && apt-get install mpd -y && rm -rf /var/lib/apt/lists/*

RUN mkdir /app
RUN mkdir /app/doc

COPY README.md /app/doc/MPD-BASE-IMAGE-README.doc

FROM scratch
COPY --from=base / /
# Thanks to "Matt Bentley <mbentley@mbentley.net>"

CMD ["bash"]
