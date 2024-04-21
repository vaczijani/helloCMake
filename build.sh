#!/bin/bash
# Best practice is to specify the generator, compiler and Debug/Release as cmake parameter
cmake -B build -DCMAKE_BUILD_TYPE=Debug -DCMAKE_VERBOSE_MAKEFILE=ON
#cmake -B build -GNinja -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_VERBOSE_MAKEFILE=ON
#cmake -B build -G"Unix Makefiles" -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_VERBOSE_MAKEFILE=ON
# cmake build calls make or ninja
cmake --build build
build/helloCMake
# check which compiler was used
readelf -p .comment build/helloCMake
