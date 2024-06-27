# -------------------------------------------------------------
find_package(SQLite3)

# prepare C macro for substitution in project-config.h
if (SQLite3_FOUND)
  set(HAVE_SQLITE3 1)
else()
  set(HAVE_SQLITE3 0)
endif()

# -------------------------------------------------------------
find_package(Mosquitto)

# prepare C macro for substitution in project-config.h
if (Mosquitto_FOUND)
  set(HAVE_MOSQUITTO 1)
else()
  set(HAVE_MOSQUITTO 0)
endif()
