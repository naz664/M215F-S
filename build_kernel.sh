#!/bin/bash
make clean && make distclean
export CROSS_COMPILE=toolchain/gcc/bin/aarch64-linux-android-
export LD=toolchain/clang/host/linux-86/clang-4639204/bin/lld
export CC=toolchain/clang/host/linux-86/clang-4639204/bin/clang
export CLANG_TRIPLE=toolchain/clang/host/linux-86/clang-4639204/bin/aarch64-linux-gnu-
export AR=toolchain/clang/host/linux-86/clang-4639204/bin/clang/llvm-ar
export NM=toolchain/clang/host/linux-86/clang-4639204/bin/clang/llvm-nm
export OBJCOPY=toolchain/clang/host/linux-86/clang-4639204/bin/clang/llvm-objcopy
export OBJDUMP=toolchain/clang/host/linux-86/clang-4639204/bin/clang/llvm-objdump
export STRIP=toolchain/clang/host/linux-86/clang-4639204/bin/clang/llvm-strip

export ARCH=arm64
export PLATFORM_VERSION=12
export ANDROID_MAJOR_VERSION=s


make ARCH=arm64 CONFIG_SECTION_MISMATCH_WARN_ONLY=y exynos9610-m21dd_defconfig
make ARCH=arm64 CONFIG_SECTION_MISMATCH_WARN_ONLY=y -j16
