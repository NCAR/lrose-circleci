

FROM centos:7


RUN \
       yum -y install epel-release; \ 
       yum -y install rsync \
       gcc \
       gcc-gfortran \
       gcc-c++ \
       make \
       wget \
       expat-devel \
       m4 \
       jasper-devel \
       flex-devel \
       zlib-devel \
       libpng-devel \
       bzip2-devel \
       qt5-qtbase-devel \
       fftw3-devel \
       libtool \
       git \
       ca-certificates \ 
       netcdf-devel 

        # qt5-qtdeclarative-devel  needed for QJSEngine
        # the rest needed for fractl, etc.
RUN \
       yum -y install qt5-qtdeclarative-devel \
       cmake \
       cmake3 \
       libzip-devel \
       GeographicLib-devel \
       eigen3-devel \
       armadillo

       #  ca-certificates  needed to persist workspace
       # epel-release  VITAL for netcdf install!
       # netcdf-devel  needed for remote access; netcdf build
      #  add this to the test container:  yum install -y xorg-x11-server-Xorg xorg-x11-xauth xorg-x11-apps libX11-devel
