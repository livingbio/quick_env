from ubuntu:14.04

MAINTAINER George.li

RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -

RUN apt-get update
RUN apt-get install -y build-essential libssl-dev
RUN apt-get install -y nodejs
RUN apt-get install -y python-software-properties python
RUN apt-get install -y git
RUN apt-get -y install python-setuptools
RUN apt-get install -y python-dev
RUN apt-get install -y libmysqlclient-dev
RUN apt-get install -y libxml2-dev libxslt1-dev libxslt-dev
RUN apt-get install -y libffi-dev
RUN apt-get install -y build-essential libssl-dev libffi-dev
RUN npm install -g browserify 
RUN easy_install pip

ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
RUN apt-get install -y uwsgi
