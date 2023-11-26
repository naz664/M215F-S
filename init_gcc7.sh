#this is to automate toolchain cloning cuz i am too lazy to clone stuff on different vm(s) againg and again , also to reduce commands in workflow

#clone proton clang v13 toolchain
git clone --depth=1 https://github.com/kdrag0n/proton-clang toolchain/proton-clang

#gcc 7.5 linaro 
wget https://kali.download/nethunter-images/toolchains/linaro-aarch64-7.5.tar.xz
tar -xf linaro-aarch64-7.5.tar.xz
mv aarch64-linaro-7.5 gcc
mv gcc toolchain
