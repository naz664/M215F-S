#!/bin/bash

export CROSS_COMPILE=/home/naz664/KKRT_TC/gcc49/bin/aarch64-linux-android-
export CLANG_TRIPLE=/home/naz664/KKRT_TC/proton/bin/aarch64-linux-gnu-
export CC=/home/naz664/KKRT_TC/proton/bin/clang/bin/clang

make clean && make mrproper
export ARCH=arm64
export PLATFORM_VERSION=12
export ANDROID_MAJOR_VERSION=s

make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y  exynos9610-m21dd_defconfig
make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y -j$(nproc --all)

