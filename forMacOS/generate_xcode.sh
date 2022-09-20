#! /bin/bash
DEPTH_PATH=$(dirname $1)
if [ $2 -ne "" ]; then
	DEPTH_PATH=$(dirname $2)
fi
GEN_GYP_PATH=$(dirname $1)
cd $(dirname $0)
../gyp $(realpath "$1") --depth=$DEPTH_PATH -f xcode -generator-output=./build.xcodefiles