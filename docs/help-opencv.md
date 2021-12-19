# Open CV


[compiler] sudo apt-get install build-essential
[required] sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu $(lsb_release -sc)-security main"
sudo apt update
sudo apt install libopenjp2-7 libopenjp2-7-dev

[optional] sudo apt-get install libtbb2 libtbb-dev \
 libjpeg-dev libpng-dev libtiff-dev \
 libopenexr-dev libwebp-dev \
 libdc1394-22-dev

Python2
sudo apt-get install python-dev python-numpy 

Python3
sudo apt-get install python3-dev python3-numpy

Next we need GTK support for GUI features, Camera support (v4l), Media Support (ffmpeg, gstreamer) etc.

sudo apt-get install libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev libavresample-dev

sudo apt-get install libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev

sudo apt-get install libgtk-3-dev

to support gtk2:

sudo apt-get install libgtk2.0-dev
to support gtk3:

sudo apt-get install libgtk-3-dev

sudo apt-get install libopenblas-base libopenblas-dev  libmlpack-dev
sudo apt-get install libatlas3-base libatlas-base-dev

## Instalação 

Baixar cósdigo fonte e fazer build na plataforma alvo.

    git clone https://github.com/opencv/opencv.git
    git clone https://github.com/opencv/opencv_contrib.git


Necessario configurar os repositorios para versão 4.0.1

    cd opencv
    git checkout tags/4.5.2

Para o projeto TCCWASM as bibliotecs do opencv devem seer compiladas para Linker estatico.
Por isso a compilação p/ Linux e WIndows deve ser feita de maneira estatica.

## Linux

Lib dinamica x86_64

    cd opencv
    mkdir build
    cd build
    cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local ..
    make -j7
    sudo make install

Lib estatica x86_64

    cd opencv
    mkdir build
    cd build
    cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local -DBUILD_SHARED_LIBS=OFF ..
    make -j7
    sudo make install

Lib estatica x86

    cd opencv
    mkdir build
    cd build
    cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS=-m32 -DCMAKE_INSTALL_PREFIX=/usr/local -DBUILD_SHARED_LIBS=OFF ..
    make -j7
    sudo make install

## Windows

Pré requisitos

* Visual Studdio Community 15 2017 versão 32 bits.
* Python 3.7 32 bits
* Python 3.7 64 bits
* Python 2.73 32 bits
* .\python.exe -m pip install numpy

    Configurar cmake e fazer build com Visual Studio Community, versão 15 ou superior.
    cd opencv
    mkdir build
    cd build
    cmake.exe -G "Visual Studio 15 2017" -A Win32 -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF ..
    cmake.exe --build . --config Release --target INSTALL

Após execução dos comando logo acima uma pasta 

## WASM

    cd opencv
    python ./platforms/js/build_js.py build_wasm --build_wasm --build_doc

## Referências

* [OpenCV no Linux](https://docs.opencv.org/4.0.1/d7/d9f/tutorial_linux_install.html)
* [OpenCV no Windows](https://docs.opencv.org/4.0.1/d5/de5/tutorial_py_setup_in_windows.html)
* [OpenCV JS](https://docs.opencv.org/4.5.2/d4/da1/tutorial_js_setup.html)


https://docs.opencv.org/4.5.2/d2/de6/tutorial_py_setup_in_ubuntu.html

https://github.com/opencv/opencv/issues/12957