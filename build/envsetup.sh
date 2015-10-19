#!/bin/sh

PORT_ROOT=
# check if run in the rop dir
if [ -f build/envsetup.sh ]; then
    export PORT_ROOT=$PWD
else
    echo "Please run this script in the top directory"
    return
fi

export PORT_BUILD=$PORT_ROOT/build
export PORT_DEVICE=$PORT_ROOT/devices
export PORT_TOOLS=$PORT_BUILD/tools
export PORT_CONFIG=$PORT_BUILD/config
