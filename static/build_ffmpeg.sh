#!/bin/bash
#sudo apt install nvidia-cuda-toolkit -y
sudo apt install -y pkg-config libass-dev
sudo apt-get install libopus-dev libmp3lame-dev libvpx-dev libx265-dev libnuma-dev libx264-dev nasm -y
sudo apt-get update -qq && sudo apt-get -y install \
  autoconf \
  automake \
  build-essential \
  libfdk-aac-dev \
  cmake \
  git-core \
  libass-dev \
  libfreetype6-dev \
  libgnutls28-dev \
  libsdl2-dev \
  libtool \
  libva-dev \
  libvdpau-dev \
  libvorbis-dev \
  libxcb1-dev \
  libxcb-shm0-dev \
  libxcb-xfixes0-dev \
  pkg-config \
  texinfo \
  wget \
  yasm \
  zlib1g-dev
cd ~/; git clone https://git.videolan.org/git/ffmpeg/nv-codec-headers.git
cd ~/nv-codec-headers && sudo make install && cd ~/
git clone https://git.ffmpeg.org/ffmpeg.git
cd ~/ffmpeg
PKG_CONFIG_PATH="/usr/local/lib/pkgconfig" ./configure \
--enable-cuda-nvcc \
--enable-cuvid \
--enable-gpl \
--enable-gnutls \
--enable-nvenc \
--enable-zlib \
--enable-libfreetype \
--enable-libmp3lame \
--enable-demuxer=image2 \
--enable-decoder=mjpeg,png \
--enable-protocol=file \
--enable-libfdk-aac \
--enable-decoder=png \
--enable-encoder=png \
--enable-libopus \
--enable-libvorbis \
--enable-libvpx \
--enable-libx264 \
--enable-libx265 \
--enable-nonfree \
--enable-libnpp \
--enable-libass \
--extra-cflags=-I/usr/local/cuda/include \
--extra-ldflags=-L/usr/local/cuda/lib64
make -j`nproc`
make install
