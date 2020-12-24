FROM debian:stable

# Download and update packages
RUN dpkg --add-architecture i386
RUN apt-get -y update
RUN apt-get -y upgrade

# Install required dependencies
RUN apt-get -y install libstdc++6:i386 libgcc1:i386 libcurl4-gnutls-dev:i386 wget unzip screen

# Install steamcmd
RUN mkdir /home/steamcmd/
WORKDIR /home/steamcmd/
RUN wget "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz"
RUN tar -xvzf steamcmd_linux.tar.gz
