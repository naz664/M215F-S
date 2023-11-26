#this is to automate toolchain cloning cuz i am too lazy to clone stuff on different vm(s) againg and again , also to reduce commands in workflow

#clone proton clang v13 toolchain
git clone --depth=1 https://github.com/kdrag0n/proton-clang toolchain/proton-clang

#gcc 11.3 
#wget https://developer.arm.com/-/media/Files/downloads/gnu/11.3.rel1/binrel/arm-gnu-toolchain-11.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz?rev=8d05006a68d24d929d602804ec9abfb4&hash=A09C3DEEEC9525EE0513C0F6E519D0F6
wget https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu/11.3.rel1/binrel/arm-gnu-toolchain-11.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz
tar -xf arm-gnu-toolchain-11.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz
mv arm-gnu-toolchain-11.3.rel1-x86_64-aarch64-none-linux-gnu gcc
mv gcc toolchain
