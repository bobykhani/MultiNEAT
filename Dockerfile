FROM ubuntu:18.10

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y git cmake
RUN apt-get update && apt-get install -y python-setuptools python-psutil python-numpy python-concurrent.futures python-opencv
RUN cd /opt && git clone https://github.com/peter-ch/MultiNEAT.git
RUN cd /opt/MultiNEAT && cmake . && python setup.py build_ext && python setup.py install



