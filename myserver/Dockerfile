FROM fedora
MAINTAINER Fabien Malfoy <fm@startx.fr>
RUN  dnf -y install nmap-ncat; dnf clean all 
ADD  mycmd.sh /usr/local/bin/mycmd.sh
USER nobody:nobody
CMD  ["/usr/bin/ncat", "-c", "/usr/local/bin/mycmd.sh", "-k", "-l", "3838"]
EXPOSE 3838
