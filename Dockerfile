FROM ubuntu:18.04

RUN apt-get update && apt-get install -y gcc-8 g++-8 git autoconf libtool make cmake wget libyaml-dev liblua5.3-dev zlib1g-dev
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800 --slave /usr/bin/g++ g++ /usr/bin/g++-8
RUN mkdir /boost_bld && cd /boost_bld && \
    wget https://dl.bintray.com/boostorg/release/1.73.0/source/boost_1_73_0.tar.gz && \
    tar xvf boost_1_73_0.tar.gz && \
    cd /boost_bld/boost_1_73_0 && ./bootstrap.sh --prefix=/usr/local && ./b2 install && cd / && rm -rf /boost_bld

