#!/usr/bin/env bash

BASE=$(cd $(dirname $0) && pwd -P)
VERSION=$(grep '"version"' info.json | grep -o '[0-9]*\.[0-9]*\.[0-9]*')

pushd $BASE >/dev/null
cd ..
zip -r pyalienlife_$VERSION.zip pyalienlife.git/


if [ $(uname) == "Linux" ]
then
    mv pyalienlife_$VERSION.zip ~/.factorio/mods
elif [ $(uname) == "Darwin" ]
then
    mv pyalienlife_$VERSION.zip ~/Library/Application\ Support/factorio/mods/
fi

popd
