#!/usr/bin/env bash

# Install the build dependencies:
sudo apt install build-essential flex bison dwarves libssl-dev libelf-dev

# change dir to workplace
cd "${GITHUB_WORKSPACE}" || exit

cd WSL2-Linux-Kernel || exit

cp ../..config .config

make -j $(nproc)

cd ../
mkdir "artifact"
