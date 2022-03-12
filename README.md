# mpd-base-image

## Reference

First and foremost, the reference to the awesome project:

[Music Player Daemon](https://www.musicpd.org/)

## Links

Source: [GitHub](https://github.com/giof71/mpd-base-image)  
Images: [DockerHub](https://hub.docker.com/r/giof71/mpd-base-image)

## Description

This is a base image with mpd installed. It is (or will be used) by mpd-alsa-docker and mpd-pulse-docker.

## Release History

Release Date|Major Changes
---|---
Base Image Bump|Bump to debian buster-20220228-slim, debian bullseye-20220228-slim, ubuntu focal-20220302
2022-02-26|Run apt-get upgrade during build, automatic sync of README.md towards Docker Hub. Reduce image size.
2022-02-13|Automated builds thanks to [Der-Henning](https://github.com/Der-Henning/), Builds for amd64 also thanks to [Der-Henning](https://github.com/Der-Henning/), the README.md you are reading now is copied to the image under path `/app/doc/README.md`. Building from debian bullseye, debian buster and ubuntu focal. Created convenience script for local build.
