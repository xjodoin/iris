FROM python:buster

RUN apt-get update && apt-get install -y libssl-dev libxml2-dev libxslt1-dev libsasl2-dev libldap2-dev

COPY . /app

RUN cd /app && pip install -e '.'