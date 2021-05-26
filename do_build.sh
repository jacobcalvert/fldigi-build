#!/bin/bash

BASE_URL="http://www.w1hkj.com/files/"

FLDIGI_FOLDER="fldigi-4.1.18"
FLMSG_FOLDER="flmsg-4.0.17"
FLRIG_FOLDER="flrig-1.3.54"

echo "Building $FLDIGI_FOLDER"
cd /opt/source

wget "${BASE_URL}/fldigi/${FLDIGI_FOLDER}.tar.gz"

tar xvf "${FLDIGI_FOLDER}.tar.gz"

cd $FLDIGI_FOLDER

./configure --enable-static --enable-optimizations=native

make -j $(nproc)


echo "Building $FLMSG_FOLDER"
cd /opt/source

wget "${BASE_URL}/flmsg/${FLMSG_FOLDER}.tar.gz"

tar xvf "${FLMSG_FOLDER}.tar.gz"

cd $FLMSG_FOLDER

./configure --enable-static --enable-optimizations=native

make -j $(nproc)

echo "Building $FLRIG_FOLDER"
cd /opt/source

wget "${BASE_URL}/flrig/${FLRIG_FOLDER}.tar.gz"

tar xvf "${FLRIG_FOLDER}.tar.gz"

cd $FLRIG_FOLDER

./configure --enable-static --enable-optimizations=native

make -j $(nproc)

echo "Done!!"
