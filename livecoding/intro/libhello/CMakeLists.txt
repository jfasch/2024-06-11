add_library(
  hello

  hello.h hello.c
  hello-name.h hello-name.c
)
target_include_directories(
  hello PUBLIC

  .
)

set_property(TARGET hello PROPERTY VERSION 2)
install(TARGETS hello DESTINATION lib)

