FROM narf/nfsclient:0.0.1
MAINTAINER Nat Lownes <nat.lownes@gmail.com>

# must run in privileged mode (-privileged) when mounting nfs shares

RUN apt-get install -y python2.7 python-pip python-virtualenv
RUN apt-get install -y build-essential
RUN apt-get install -y python2.7-dev

RUN pip install --allow-all-external -I gmvault==1.8.1-beta

ADD gmvault.sh /root/gmvault.sh

RUN chmod +x /root/gmvault.sh

ENTRYPOINT ["bash", "/root/gmvault.sh"]
