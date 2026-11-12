#!/bin/bash
set -e

if [ -z "$THEOS" ]; then
    if [ -d "$HOME/theos" ]; then
        export THEOS="$HOME/theos"
    elif [ -d "/opt/theos" ]; then
        export THEOS="/opt/theos"
    else
        echo "Lỗi: Chưa tìm thấy biến môi trường THEOS."
        exit 1
    fi
fi

make clean
make package FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=roothide
echo "Hoàn tất! File .deb Roothide nằm trong thư mục ./packages/"
