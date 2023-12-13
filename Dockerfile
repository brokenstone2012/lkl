FROM debian:latest

EXPOSE 8888

COPY  *.* /root/lkl/

RUN apt-get update ;\
    apt-get install -y iptables haproxy ;\
    chmod a+x /root/lkl/start.sh 

CMD  /root/lkl/start.sh


