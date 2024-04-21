cmake_minimum_required(VERSION 3.28.3)

include(CMakePrintHelpers)

project(helloCMake)

cmake_print_variables(PROJECT_SOURCE_DIR)
cmake_print_variables(CMAKE_CXX_COMPILER_ID)

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

add_executable(${PROJECT_NAME} main.cpp)
add_library(s${PROJECT_NAME} main.cpp)
add_library(d${PROJECT_NAME} SHARED main.cpp)