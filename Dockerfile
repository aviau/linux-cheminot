FROM base/archlinux

RUN pacman -Syu --noconfirm  icedtea-web libxext libxrender libxtst fontconfig ttf-dejavu

ENV LC_ALL C.UTF-8
ENV LANG en_CA.UTF-8
ENV LANGUAGE en_CA.UTF-8

ADD https://cheminotjws.etsmtl.ca/ChemiNot.jnlp /opt/ChemiNot.jnlp

CMD javaws /opt/ChemiNot.jnlp
