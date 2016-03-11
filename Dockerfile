FROM timhaak/base:latest
MAINTAINER tim@haak.co.uk

ENV SICKBEARD_VERSION master

RUN apt-get -q update &&\
    apt-get install -qy --force-yes python-cheetah && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

ADD sickbeard /sickbeard
#RUN tar -xvf sickbeard.tgz
#RUN mv sickbeard.tgz/Sick-Beard-development-* /sickbeard/
#RUN rm  /sickbeard.tgz

VOLUME ["/config","/data"]

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

EXPOSE 8081

CMD ["/start.sh"]
