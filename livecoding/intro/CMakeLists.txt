# boilerplate
cmake_minimum_required(VERSION 3.20)
project(Demo VERSION 42.666)

MESSAGE(DEBUG "Major: ${Demo_VERSION_MAJOR}")
MESSAGE(DEBUG "Major: ${Demo_VERSION_MINOR}")

configure_file(DemoConfig.h.in DemoConfig.h)
include_directories(${CMAKE_CURRENT_BINARY_DIR})

add_compile_definitions("FOO=\"abc\"")

add_subdirectory(bin)
add_subdirectory(libhello)
