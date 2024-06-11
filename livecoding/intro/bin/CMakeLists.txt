add_executable(
  hello-first hello-first.c
)
target_link_libraries(
  hello-first 
  hello
)
install(TARGETS hello-first DESTINATION bin)

add_executable(
  hello-second hello-second.c 
)
target_link_libraries(
  hello-second 
  hello
)
install(TARGETS hello-second DESTINATION bin)
