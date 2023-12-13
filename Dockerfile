FROM debian:latest

EXPOSE 80

COPY  *.* /root/lkl/

RUN echo 'root:kenstone' | chpasswd;\
    apt-get update ;\
    apt-get install -y iptables haproxy ;\
    chmod a+x /root/lkl/test ;\
    chmod a+x /root/lkl/start.sh 

CMD  /root/lkl/start.sh


