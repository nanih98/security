FROM docker.io/debian:bullseye-slim

# non-root user
RUN set -eux ;\
		useradd asterix 
	
WORKDIR /home/asterix

RUN set -eux ;\
		apt-get update ;\
		mkdir /opt/scripts ;\
		apt-get install sudo neovim binutils build-essential -y

COPY pass.txt /tmp/pass.txt
COPY backup.sh /opt/scripts/backup.sh
COPY sudoers /etc/sudoers
COPY flag.txt /root/flag.txt

RUN chpasswd </tmp/pass.txt && rm /tmp/pass.txt

USER asterix
