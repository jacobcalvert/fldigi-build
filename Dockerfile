FROM ubuntu:focal
WORKDIR /opt/scripts
COPY do_build.sh /opt/scripts
ENV DEBIAN_FRONTEND="noninteractive" TZ="America/Chicago"
RUN apt update && apt install -y git build-essential wget pkg-config libpng-dev libsamplerate-dev  libsndfile-dev portaudio19-dev libpulse-dev libhamlib-dev libfltk1.3-dev libjpeg-dev libxft-dev libxinerama-dev libxcursor-dev libxfixes-dev && mkdir /opt/source
ENTRYPOINT ["/opt/scripts/do_build.sh"]


