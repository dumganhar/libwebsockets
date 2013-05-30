#!/bin/sh
cd `dirname $0`/..

mkdir -p build_armeabi
cd build_armeabi

cmake -DANDROID_ABI=armeabi -DCMAKE_TOOLCHAIN_FILE=../android.toolchain.cmake     -DWITH_SSL=0 -DWITHOUT_SERVER=1 -DCMAKE_INSTALL_PREFIX:PATH=/Users/james/Project/libwebsockets/install/android/armv5 $@ ../..
make
make install


cd ../
mkdir -p build_armeabi-v7a
cd build_armeabi-v7a

cmake -DANDROID_ABI=armeabi-v7a -DCMAKE_TOOLCHAIN_FILE=../android.toolchain.cmake -DWITH_SSL=0 -DWITHOUT_SERVER=1 -DCMAKE_INSTALL_PREFIX:PATH=/Users/james/Project/libwebsockets/install/android/armv7a $@ ../..
make
make install

cd ../
mkdir -p build_x86
cd build_x86

cmake -DANDROID_ABI=x86 -DCMAKE_TOOLCHAIN_FILE=../android.toolchain.cmake -DWITH_SSL=0 -DWITHOUT_SERVER=1 -DCMAKE_INSTALL_PREFIX:PATH=/Users/james/Project/libwebsockets/install/android/x86 $@ ../..
make
make install

# cmake -DANDROID_ABI=armeabi -DCMAKE_TOOLCHAIN_FILE=../scripts/toolchain-android-ndk-r8e.cmake $@ ../..

