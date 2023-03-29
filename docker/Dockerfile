FROM ubuntu:22.04

# Setup environment
ENV DEBIAN_FRONTEND noninteractive

# The container has no package lists, so need to update first
RUN apt-get update -y
RUN apt-get install -y --no-install-recommends \
        bc \
        bear \
        build-essential \
        bzr \
        ca-certificates \
        ccache \
        chrpath \
        clang-tidy \
        clangd-12 \
        clangd-12 \
        cmake \
        cpio \
        cpio \
        curl \
        cvs \
        debianutils \
        device-tree-compiler \
        dfu-util \
        diffstat \
        file \
        g++-multilib \
        gawk \
        gcc-multilib \
        git \
        gperf \
        iputils-ping \
        iproute2 \
        libegl1-mesa \
        liblz4-tool \
        libmagic1 \
        libncurses5-dev \
        libpython3.10-dev \
        libsdl1.2-dev \
        libsdl2-dev \
        libssl-dev \
        locales \
        mercurial \
        mesa-common-dev \
        ninja-build \
        openssh-client \
        pylint \
        python3-dev \
        python3-git \
        python3-jinja2 \
        python3-pexpect \
        python3-pip \
        python3-setuptools \
        python3-subunit \
        python3-tk \
        python3-venv \
        python3-wheel \
        rsync \
        shellcheck \
        socat \
        subversion \
        sudo \
        swig \
        texinfo \
        unzip \
        wget \
        xterm \
        xz-utils \
        zstd \
        && \
    apt-get -y autoremove && \
    apt-get -y clean

# To be able to generate a toolchain with locales, enable one UTF-8 locale
RUN sed -i 's/# \(en_US.UTF-8\)/\1/' /etc/locale.gen && \
    /usr/sbin/locale-gen

RUN useradd -ms /bin/bash user && \
    chown -R user:user /home/user

RUN groupadd -f -g 992 kvm
RUN usermod -aG kvm user

USER user
WORKDIR /home/user
ENV HOME /home/user
ENV LC_ALL en_US.UTF-8
