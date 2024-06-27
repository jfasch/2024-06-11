cmake_minimum_required(VERSION 3.20)
project(Gluehweinkochen VERSION 42.666)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(my_add_library)
include(compiler-settings)
include(external-dependencies)

configure_file(
  ${CMAKE_CURRENT_SOURCE_DIR}/project-config.h.in
  ${CMAKE_CURRENT_BINARY_DIR}/project-config.h)
include_directories(${CMAKE_CURRENT_BINARY_DIR})

add_subdirectory(firmware)
add_subdirectory(toolcase)
