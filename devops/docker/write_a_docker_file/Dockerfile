FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN sed -i 's/80/3003/' /etc/apache2/ports.conf
EXPOSE 3003

ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D","FOREGROUND","-k","start"]