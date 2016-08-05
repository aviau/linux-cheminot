FROM debian:stretch


RUN apt-get update && \
    apt-get install -y --force-yes --no-install-recommends
        locales \
        icedtea-plugin \
        wget && \
    wget https://cheminotjws.etsmtl.ca/ChemiNot.jnlp && \
    apt-get purge -y wget && \
    apt clean

CMD javaws ChemiNot.jnlp
