FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y \
    software-properties-common \
    && add-apt-repository ppa:xfce/xfce4-desktop \
    && apt-get update \
    && apt-get install -y xfce4 xfce4-goodies \
    && apt-get clean

# Set the default shell to bash
SHELL ["/bin/bash", "-c"]
