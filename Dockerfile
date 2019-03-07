FROM ubuntu:18.04

RUN apt-get update && apt-get install -y gcc-8 g++-8 git autoconf libtool make libboost-filesystem-dev libboost-system-dev qt5-qmake

RUN ln -s /usr/bin/qmake /usr/lib/x86_64-linux-gnu/qt5/qmake
ENV PATH="/usr/lib/x86_64-linux-gnu/qt5/bin:${PATH}"

# RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 700 --slave /usr/bin/g++ g++ /usr/bin/g++-7
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800 --slave /usr/bin/g++ g++ /usr/bin/g++-8
