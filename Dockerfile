FROM centos:centos7

RUN yum install -y nmap-ncat \
 && yum clean all \
 && yum update -y \
 && yum clean all \
 && rm -rf /var/cache/yum \
 && rpm --rebuilddb \
 && useradd -rUm -u 31337 symds -d /app/ \
 && chown -R symds:symds /app/

USER 31337
WORKDIR /app

COPY entrypoint.sh /app/

CMD ["./entrypoint.sh"]
