FROM debian:stretch

RUN apt-get update && \
    apt-get install -y icedtea-plugin 

ADD https://cheminotjws.etsmtl.ca/ChemiNot.jnlp

CMD javaws ChemiNot.jnlp
