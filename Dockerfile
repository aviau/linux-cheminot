FROM debian:buster

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        locales \
        icedtea-netx \
    && dpkg-reconfigure locales \
    && locale-gen C.UTF-8 \
    && /usr/sbin/update-locale LANG=C.UTF-8 \
    && echo 'en_CA.UTF-8 UTF-8' >> /etc/locale.gen \
    && locale-gen \
    && apt purge locales -y \
    && apt autoremove -y \
    && apt clean

ENV LC_ALL C.UTF-8
ENV LANG en_CA.UTF-8
ENV LANGUAGE en_CA.UTF-8

CMD javaws https://cheminotjws.etsmtl.ca/ChemiNot.jnlp
