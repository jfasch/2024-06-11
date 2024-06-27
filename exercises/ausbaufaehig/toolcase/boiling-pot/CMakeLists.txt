my_add_library(
  NAME boiling-pot

  PUBLIC_HEADERS

    boiling-pot.h

  INSTALL_PUBLIC_HEADERS

    gluehwein/boiling-pot

  SOURCES

    boiling-pot.cpp
)

target_link_libraries(boiling-pot base)
