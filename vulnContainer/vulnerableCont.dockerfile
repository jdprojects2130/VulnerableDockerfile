FROM ubuntu:bionic-20180426

ENV DEBIAN_FRONTEND="noninteractive"

#Install dependencies
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y build-essential && \
#Curl Vulnerability https://www.cvedetails.com/cve/CVE-2018-1000300/
    apt-get install -y curl && \
#GIT Vulnerability CVE https://www.cvedetails.com/cve/CVE-2018-17456/
    apt-get install -y git && \
#Rdesktop Vulnerability https://www.cvedetails.com/cve/CVE-2018-20182/
    apt-get install -y rdesktop && \
#OpenSSH Vulnerability https://www.cvedetails.com/cve/CVE-2018-15473/
    apt-get install -y openssh-server && \
#Installation of ftp server
    apt-get install -y proftpd

EXPOSE 20 21 22 3389
#Not correctly configure for ARM architecture
#LibreOffice Vulnerability CVE https://www.cvedetails.com/cve/CVE-2019-9851/
#RUN curl -LO https://downloadarchive.documentfoundation.org/libreoffice/old/6.2.3.1/deb/x86_64/LibreOffice_6.2.3.1_Linux_x86-64_deb.tar.gz
#RUN tar zxf LibreOffice_6.2.3.1_Linux_x86-64_deb.tar.gz
#RUN cd LibreOffice_6.2.3.1_Linux_x86-64_deb/DEBS/ && \
#    dpkg -i *.deb
#RUN rm LibreOffice_6.2.3.1_Linux_x86-64_deb.tar.gz