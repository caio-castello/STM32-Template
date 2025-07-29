@echo off
if not exist build mkdir build
cd build
if not exist build.ninja (
    cmake -G "Ninja" -DCMAKE_TOOLCHAIN_FILE=../lib/stm32-cmake/cmake/stm32_gcc.cmake ..
)
ninja
