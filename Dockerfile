FROM ubuntu:focal
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y curl
RUN apt-get install -y \
    libsdl2-dev libsdl2-ttf-dev \
    libsdl2-image-dev libsdl2-mixer-dev \
    libfreetype6-dev build-essential \
    ccache astyle git gettext