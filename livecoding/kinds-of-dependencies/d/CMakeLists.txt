add_library(
  d

  inc-public/d.h
  src/d.c
)
target_include_directories(
  d

  PUBLIC inc-public
)
set_property(TARGET d PROPERTY POSITION_INDEPENDENT_CODE TRUE)
