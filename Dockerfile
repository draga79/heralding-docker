FROM alpine:3.12
MAINTAINER Stefano Marinelli <stefano@dragas.it>

RUN apk add --no-cache python3 py3-pip python3-dev libffi-dev py3-cffi py3-pyzmq && apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev postgresql-libs 

RUN pip install --upgrade pip && pip3 install heralding && rm -Rf /root/.cache/ && mkdir /heralding

ENTRYPOINT cd /heralding && heralding
