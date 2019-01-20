FROM python:3.6.8-alpine

RUN apk update \
    && apk add --no-cache --virtual .pynacl_deps build-base python3-dev libffi-dev \
    && apk add gcc \
    && apk add g++ \
    && apk add linux-headers \
    && apk add musl-dev \
    && apk add libffi-dev \
    && apk add openssl \
    && apk add openssl-dev \
    && pip install sphinx \
    && pip install DhelmGfeedClient \
    && pip install pandas \
    && pip install pusher \
    && pip install pyOpenSSL \
    && pip install pyrebase
