FROM debian:9

RUN echo "root:bigfoot1" | chpasswd

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
	apache2-utils \
	curl \
	dnsutils \
	iperf \
	iperf3 \
	iproute \
	iptables \
	isc-dhcp-server \
	isc-dhcp-client \
	lighttpd \
	net-tools \
	netcat \
	nmap \
	openssh-server \
	pppoe \
	psmisc \
	procps \_P

	python-pip \
	python-mysqldb \
	tinyproxy \
	traceroute \
	tftpd-hpa \
	tcpdump \
	vim-common \
	xinetd

RUN mkdir /var/run/sshd
RUN sed -i 's/.*PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN apt-get install -y git
RUN git clone https://github.com/mattsm/boardfarm.git
RUN git clone https://github.com/naveen112/shell.git
WORKDIR /shell
CMD ["sh","test.sh"]
EXPOSE 22
