FROM lsiobase/alpine.python3.armhf:3.9

ARG FLEXGET_VERSION=2.21.3

ENV S6_BEHAVIOUR_IF_STAGE2_FAILS="2"
ENV PYTHONIOENCODING="UTF-8"

RUN pip install HiYaPyCo==0.4.14 flexget==${FLEXGET_VERSION}

COPY root/ /
COPY src/main/python /app

VOLUME /config /downloads