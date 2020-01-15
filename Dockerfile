FROM python:3.7-slim
RUN apt-get -y install curl autoconf automake libtool python-dev pkg-config
RUN git clone --depth=1 https://github.com/openvenues/libpostal /libpostal \
&& cd /libpostal \
&& ./bootstrap.sh \
&& ./configure --datadir=/libpostal \
&& make -j4 \
&& make install \
&& ldconfig
