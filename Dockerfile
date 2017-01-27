FROM ubuntu:16.04

RUN apt-get update && apt-get install -y -q \
  build-essential \
  python-dev \
  python-pip \
  libjpeg8-dev \
  zlib1g-dev \
  libtiff5-dev \
  libfreetype6-dev \
  fonts-takao \
  fonts-vlgothic \
  texlive-full

RUN mkdir /docs/
WORKDIR /docs/
COPY requirements.txt /docs/
RUN pip install -r requirements.txt

CMD make latexpdfja
