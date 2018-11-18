FROM fedora:20

ARG OUR_USER=vncuser
ARG OUR_HOME=/$OUR_USER

RUN useradd -Nm -u 1000 -s /bin/bash -d $OUR_HOME $OUR_USER && \
    yum -y install tigervnc-server                             \
                   firefox                                     \
                   WindowMaker                              && \
    mkdir $OUR_HOME/.vnc

COPY passwd $OUR_HOME/.vnc/
COPY xstartup $OUR_HOME/.vnc/
COPY main.sh $OUR_HOME/
ADD mozilla.tar $OUR_HOME/

RUN chown -R $OUR_USER: $OUR_HOME/    && \
    chmod 600 $OUR_HOME/.vnc/passwd   && \
    chmod 755 $OUR_HOME/.vnc/xstartup && \
    chmod 755 $OUR_HOME/main.sh

ENV WIDTH 1680
ENV HEIGHT 1050
VOLUME /mydata
WORKDIR $OUR_HOME
USER $OUR_USER

CMD ./main.sh
