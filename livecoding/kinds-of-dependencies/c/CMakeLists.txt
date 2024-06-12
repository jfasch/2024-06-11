add_library(
  c

  INTERFACE

  inc-public/c.h
)

target_include_directories(c INTERFACE inc-public)
