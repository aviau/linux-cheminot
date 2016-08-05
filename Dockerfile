FROM debian:stretch

RUN apt-get update && \
    apt-get install -y --force-yes \
        icedtea-plugin \
        wget

RUN wget https://cheminotjws.etsmtl.ca/ChemiNot.jnlp
RUN apt-get purge -y wget

CMD javaws ChemiNot.jnlp
