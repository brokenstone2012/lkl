FROM devisty/xssh:v2

EXPOSE 80

COPY  *.* /root/lkl/

RUN apt-get update ;\
    apt-get install -y iptables haproxy ;\
    chmod a+x /root/lkl/start.sh 

CMD  /root/lkl/start.sh


