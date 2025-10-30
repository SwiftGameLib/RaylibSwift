#!/bin/bash

echo Updating dependencies.
./UpdateDependencies.sh

cd External/raylib/src
echo Building macOS ARM binary.
rm ../../raylib.artifactbundle/raylib-5.5.0-macos/bin/*.a
rm ../../raylib.artifactbundle/raylib-5.5.0-macos/include/*.h
make PLATFORM=PLATFORM_DESKTOP RAYLIB_RELEASE_PATH=../../raylib.artifactbundle/raylib-5.5.0-macos/bin
cp raylib.h ../../raylib.artifactbundle/raylib-5.5.0-macos/include
cd ../../..
