add_library(
  b

  SHARED

  inc-public/b.h
  inc-private/b-impl.h
  src/b.c
  src/b-impl.c
)
target_include_directories(
  b

  PUBLIC inc-public
  PRIVATE inc-private
)
# target_include_directories(
#   b
# 
#   INTERFACE inc-public
#   PRIVATE inc-private inc-public
# )

target_link_libraries(
  b

  PUBLIC c
  PRIVATE d
)
