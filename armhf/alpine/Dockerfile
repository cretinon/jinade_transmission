ARG ARCH=frommakefile
ARG DISTRIB=frommakefile
ARG DOCKERSRC=frommakefile
ARG USERNAME=frommakefile
#
FROM ${USERNAME}/${DOCKERSRC}:${DISTRIB}_${ARCH}
#
RUN apk add --no-cache --purge -uU transmission-daemon procps net-tools curl ca-certificates &&  rm -rf /var/cache/apk/* /tmp/*

ADD entrypoint.sh /usr/local/entrypoint.sh
RUN chmod 755 /usr/local/entrypoint.sh

COPY settings.json /etc/transmission-daemon/

EXPOSE 9091/tcp

ENTRYPOINT ["/usr/local/entrypoint.sh"]
