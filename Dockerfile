FROM ubuntu:trusty
MAINTAINER Josh Strange <josh@joshstrange.com>

RUN apt-get update --fix-missing
RUN apt-get install -y python2.7 python-pip python-virtualenv
RUN apt-get install -y build-essential
RUN apt-get install -y python2.7-dev

RUN pip install --allow-all-external -I gmvault==1.9

ADD gmvault.sh /root/gmvault.sh

RUN chmod +x /root/gmvault.sh
RUN mkdir /backup

ENTRYPOINT ["bash", "/root/gmvault.sh"]
