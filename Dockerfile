FROM ubuntu:18.04

RUN apt-get update -y \
    && mkdir macports \
    && cd macports/ \
    && apt install -y curl \
    && curl -O https://distfiles.macports.org/MacPorts/MacPorts-2.5.4.tar.bz2 \
    && tar xf MacPorts-2.5.4.tar.bz2

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y build-essential \
    autotools-dev debhelper \
    gobjc gobjc++ gobjc-multilib gobjc++-multilib \
    libgnustep-base-dev gnustep-core-devel sqlite \
    libsqlite3-dev openssl libcurl4-openssl-dev curl \
    tcl tcl-dev tcl-doc tclthread tclreadline \
    freebsd-buildutils binutils libc6-dev perl \
    doxygen swig cvs ed pax rlwrap rsync libssl-dev

RUN cd macports/ \
    && cd MacPorts-2.5.4/ \
    && ./configure --with-objc-runtime=GNU --with-objc-foundation=GNU --enable-maintainer-mode --enable-symbols --enable-readline \
    && make \
    && make install

ENV PATH="/opt/local/bin:$PATH"

RUN port -v selfupdate
