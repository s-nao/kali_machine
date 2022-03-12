FROM kalilinux/kali-rolling

RUN apt-get -y update && apt-get -y upgrade && \
   DEBIAN_FRONTEND=noninteractive apt-get install -y \
   kali-linux-headless \
   pciutils \
   bash-completion && \
   apt-get autoremove -y && \
   apt-get clean

RUN apt-get install -y iputils-ping net-tools gobuster

# copy pentest repos
COPY ./tools /opt

# create a new user
RUN adduser --quiet --disabled-password --shell /bin/bash --home /home/kali --gecos "User" kali
RUN echo "kali:kali" | chpasswd
RUN usermod -aG sudo kali

# switch to new user
USER kali
WORKDIR /home/kali