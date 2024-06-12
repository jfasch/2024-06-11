# file(STRINGS "/etc/passwd" lines)
# foreach(line ${lines})
#   file(APPEND "/tmp/x" "${line}\n")
# endforeach()

# file(GLOB files "*.cpp")
# foreach(file ${files})
#   message("${file}")
# endforeach()

set(abspath "/a/b/c.cpp")
cmake_path(GET abspath FILENAME filename_part)
message("${filename_part}")
