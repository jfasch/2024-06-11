add_library(
  boiling-pot

  boiling-pot.h
  boiling-pot.cpp
)
target_include_directories(
  boiling-pot
  PUBLIC
  .
)

target_link_libraries(
  boiling-pot
  base
)
