

FROM ubuntu


RUN \
       apt-get update && apt-get install -y \ 
       rsync \
       gcc \
       gfortran \
       g++ \
       libfl-dev \
       chrpath \
       automake \
       make \
       pkg-config \
       libexpat1-dev \
       python \
       cmake \
       wget \
       m4 \
       libpng-dev \
       libbz2-dev \
       libqtdeclarative5-dev \
       libqt5webview5-dev \
       libfftw3-dev \
       libtool \
       git \
       ca-certificates \ 
       libgeographic-dev \
       libeigen3-dev \
       libzip-dev \
       libcurl4-openssl-dev \
       libnetcdf-dev 

       # may not need these:
       # expat-devel \  
       # flex-devel \ --> libfl-dev
       # jasper-devel \
       # zlib-devel \ --> libzip-dev 

       #  ca-certificates  needed to persist workspace
       # epel-release  VITAL for netcdf install! (may not be needed for ubuntu)
       # netcdf-devel  needed for remote access; netcdf build
      #  add this to the test container:  apt-get install -y xorg-x11-server-Xorg xorg-x11-xauth xorg-x11-apps libX11-devel
