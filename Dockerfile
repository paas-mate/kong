FROM shoothzj/base

RUN sudo apt-get update && \
    apt-get install -y apt-utils apt-transport-https gnupg2 curl lsb-release && \
    echo "deb [trusted=yes] https://download.konghq.com/gateway-3.x-ubuntu-$(lsb_release -sc)/ default all" | sudo tee /etc/apt/sources.list.d/kong.list && \
    sudo apt-get update && \
    sudo apt-get install -y kong=3.1.1 && \
    sudo apt-get clean all

WORKDIR /usr/local/kong
