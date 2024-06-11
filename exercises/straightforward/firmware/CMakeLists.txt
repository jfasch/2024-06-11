add_executable(BoilingPot boiling-pot.cpp)
target_link_libraries(
  BoilingPot

  base
  boiling-pot
)

add_executable(DataLogger data-logger.cpp)
target_link_libraries(
  DataLogger

  base
  data-logger
)
