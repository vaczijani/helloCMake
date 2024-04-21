# mandatory to specify the version; in practice we use the one we were running at the time
cmake_minimum_required(VERSION 3.28.3)
# useful for debugging
include(CMakePrintHelpers)

project(helloCMake)

cmake_print_variables(PROJECT_SOURCE_DIR)
cmake_print_variables(CMAKE_CXX_COMPILER_ID)
# I was testing compiler dependant flags; ignore this part for now
if (CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
  # using Clang
  MESSAGE("---Clang---")
  SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -O3")
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
  # using GCC
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
  # using Intel C++
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
  # using Visual Studio C++
endif()
# setting a target executable or library is important
add_executable(${PROJECT_NAME} main.cpp)
# this is how it looks if the output is a static library
add_library(s${PROJECT_NAME} main.cpp)
# output is a dynamic library
add_library(d${PROJECT_NAME} SHARED main.cpp)
