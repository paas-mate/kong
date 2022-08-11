FROM ttbb/base

RUN curl -OL https://download.konghq.com/gateway-2.x-centos-8/Packages/k/kong-2.8.1.el8.amd64.rpm  && \
yum install -y kong-2.8.1.el8.amd64.rpm && \
rm -rf kong-2.8.1.el8.amd64.rpm

WORKDIR /usr/local/kong
