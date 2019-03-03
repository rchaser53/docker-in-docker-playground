FROM centos:7.6.1810

WORKDIR /home/app

RUN yum update -y && \
    yum install -y yum-utils device-mapper-persistent-data lvm2 && \
    yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo && \
    yum install -y docker-ce docker-ce-cli containerd.io && \
    rm -rf /var/cache/yum/* 