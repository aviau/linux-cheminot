FROM debian:stretch


RUN apt-get update && \
    apt-get install -y --force-yes --no-install-recommends
        locales \
        icedtea-plugin && \
    apt clean

ADD https://cheminotjws.etsmtl.ca/ChemiNot.jnlp

CMD javaws ChemiNot.jnlp
