#this is to automate toolchain cloning cuz i am too lazy to clone stuff on different vm(s) againg and again , also to reduce commands in workflow

#clone proton clang v13 toolchain
git clone --depth=1 https://github.com/kdrag0n/proton-clang toolchain/clang/host/linux-x86/clang-4639204

#clone gcc4.9 toolchain
git clone --depth=1 https://github.com/KakarotKernel/Toolchains-for-Eureka.git -b GCC-4.9 toolchain/gcc
