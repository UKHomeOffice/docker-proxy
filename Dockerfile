FROM centos:centos6

RUN yum install -y openssh-clients openssh-server \
 && chkconfig sshd on \
 && mkdir -p /scripts \
 && ssh-keygen -f "/root/.ssh/id_rsa" -t rsa -N '' \
 && cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys

COPY ./scripts/setup-tunnel.sh /scripts/setup-tunnel.sh
COPY ./etc/rc.d/rc.local /etc/rc.d/rc.local
COPY ./entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]