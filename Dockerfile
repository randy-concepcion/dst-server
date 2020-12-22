FROM debian:stable

# Download and update packages
RUN apt-get -y update
RUN apt-get -y upgrade

# Install required dependencies
RUN apt-get -y install libstdc++6 libgcc1 libcurl4-gnutls-dev wget

# Install steamcmd
RUN mkdir /home/steamcmd/
WORKDIR /home/steamcmd/
RUN wget "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz"
RUN tar -xvzf steamcmd_linux.tar.gz
