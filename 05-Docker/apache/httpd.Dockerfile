FROM centos:7

RUN yum install -y yum-utils \
		 # Basick task - Apache
		&& yum install -y httpd  \
		# Additional task - Cron
		&& yum install -y cronie

VOLUME ["/shared"]

# copy apache congif
COPY httpd.conf      /etc/httpd/conf/

# copy entry point
EXPOSE 8080

ADD entrypoint.sh   /usr/local/bin

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
