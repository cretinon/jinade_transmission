ARG ARCH=frommakefile
ARG DISTRIB=frommakefile
ARG DOCKERSRC=frommakefile
ARG USERNAME=frommakefile
#
FROM ${USERNAME}/${DOCKERSRC}:${DISTRIB}_${ARCH}
#
RUN apt-get update && apt-get -y -q install --no-install-recommends procps net-tools transmission-daemon curl ca-certificates && apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/*

ADD entrypoint.sh /usr/local/entrypoint.sh
RUN chmod 755 /usr/local/entrypoint.sh

COPY settings.json /etc/transmission-daemon/

EXPOSE 9091/tcp

ENTRYPOINT ["/usr/local/entrypoint.sh"]
