if (SQLite3_FOUND)
  set(_sqlite3_headers sink-sqlite3.h)
  set(_sqlite3_sources sink-sqlite3.cpp)
endif()

my_add_library(
  NAME data-logger

  PUBLIC_HEADERS

    data-logger.h
    sensor-config.h
    measurements.h
    sink.h
    sink-composite.h
    sink-file.h
    sink-terminal.h
    ${_sqlite3_headers}
    sink-mqtt.h   # cond?

  INSTALL_PUBLIC_HEADERS

    gluehwein/data-logger

  SOURCES

    data-logger.cpp
    sensor-config.cpp
    measurements.cpp
    sink-composite.cpp
    sink-file.cpp
    sink-terminal.cpp
    ${_sqlite3_sources}
    sink-mqtt.cpp  # cond?
)

target_link_libraries(data-logger base)

if (SQLite3_FOUND)
  target_link_libraries(data-logger SQLite::SQLite3)
endif()
if (Mosquitto_FOUND)
  target_link_libraries(data-logger Mosquitto::Mosquitto)
endif()
