FROM java:8-jre

RUN curl -o fitnesse.jar http://fitnesse.org/fitnesse-standalone.jar\?responder\=releaseDownload\&release\=20180127 \
&&  chmod a+x fitnesse.jar 


VOLUME /opt/apps/fitnesse/

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod a+x /docker-entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["/docker-entrypoint.sh"]
