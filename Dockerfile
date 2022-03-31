FROM centos:centos7
MAINTAINER networknuts <alok@networknuts.net>
RUN yum install httpd -y
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

#####
# ADD Jenkins user in docker group
# Docker MUST be installed on Jenkins server
# usermod -a -G docker jenkins
# RESTART jenkins / server
#####
