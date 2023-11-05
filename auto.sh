#!/bin/bash
make clean && make distclean
#export CC=clang
export CROSS_COMPILE=~/android/toolchain/gcc/bin/aarch64-linux-gnu-
export LD=lld
#export CLANG_TRIPLE=~/android/toolchain/gcc/bin/aarch64-linux-gnu-
export AR=llvm-ar
export NM=llvm-nm
export OBJCOPY=llvm-objcopy
export OBJDUMP=llvm-objdump
export STRIP=llvm-strip

export ARCH=arm64
export PLATFORM_VERSION=12
export ANDROID_MAJOR_VERSION=s


make ARCH=arm64 LD=ld.lld AR=llvm-ar STRIP=llvm-strip OBJDUMP=llvm-objdump OBJCOPY=llvm-objcopy NM=llvm-nm CONFIG_SECTION_MISMATCH_WARN_ONLY=y exynos9610-m21dd_defconfig
make ARCH=arm64 LD=ld.lld AR=llvm-ar STRIP=llvm-strip OBJDUMP=llvm-objdump OBJCOPY=llvm-objcopy NM=llvm-nm CONFIG_SECTION_MISMATCH_WARN_ONLY=y -j4
