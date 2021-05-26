#!/bin/bash

BASE_URL="http://www.w1hkj.com/files"

SOURCE_DIR="/opt/source"


function get_version() {
    wget "${BASE_URL}/$1/readme.txt"
    version=$(grep -E -o [0-9]+\\.[0-9]+\\.[0-9]+ readme.txt | head -1)
    rm readme.txt
    echo $version;
    
}

function get_latest_archive() {
    vers=$(get_version $1)
    wget "${BASE_URL}/$1/${1}-$vers.tar.gz"
    tar xvf "${1}-$vers.tar.gz" > /dev/null
    echo "${1}-$vers"
}


function do_build() {
    folder=$(get_latest_archive $1)
    cd $folder
    ./configure --enable-static --enable-optimizations=native > "${SOURCE_DIR}/${1}.config.log"
    make -j $(nproc)
}


cd "$SOURCE_DIR"
do_build "fldigi"
cd "$SOURCE_DIR"
do_build "flrig"
cd "$SOURCE_DIR"
do_build "flmsg"
cd "$SOURCE_DIR"
do_build "flamp"
cd "$SOURCE_DIR"
do_build "flmsg"

echo "Done!!"




