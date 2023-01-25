FROM centos:7
LABEL maintainer Tom van Norden
ADD ./packages.txt /home/
RUN yum -y install $(cat /home/packages.txt | tr '\n' ' ') && yum -y clean all && rm -rf /var/cache
