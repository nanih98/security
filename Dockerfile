FROM docker.io/debian:bullseye-slim

COPY pass.txt /tmp/pass.txt

# non-root user
RUN set -eux ;\
		useradd asterix ;\
		chpasswd </tmp/pass.txt && rm /tmp/pass.txt
		
WORKDIR /home/asterix

RUN set -eux ;\
		apt-get update ;\
		mkdir /opt/scripts ;\
		apt-get install sudo neovim binutils build-essential -y

COPY backup.sh /opt/scripts/backup.sh
COPY sudoers /etc/sudoers
COPY flag.txt /root/flag.txt

USER asterix
