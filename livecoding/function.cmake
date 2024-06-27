function(foo)
  cmake_parse_arguments(
    FOO

    "SHARED;STATIC"             # flag args
    "NAME"                      # single argument
    "HEADER_FILES;SOURCE_FILES"  # multi-value arguments

    ${ARGV}
  )

  message("FOO_SHARED: >${FOO_SHARED}<")
  message("FOO_STATIC: >${FOO_STATIC}<")
  message("FOO_NAME: >${FOO_NAME}<")
  message("FOO_HEADER_FILES: >${FOO_HEADER_FILES}<")
  message("FOO_SOURCE_FILES: >${FOO_SOURCE_FILES}<")

  foreach (loopvar ${FOO_SOURCE_FILES})
    message("${loopvar}")
  endforeach()
endfunction()

foo(
  NAME base

  SHARED

  HEADER_FILES a.h b.h
  SOURCE_FILES a.cpp b.cpp
)
