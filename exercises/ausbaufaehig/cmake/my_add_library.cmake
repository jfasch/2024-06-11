function(my_add_library)
  cmake_parse_arguments(
    PARAM

    "STATIC;SHARED"                           # flags
    "NAME;INSTALL_PUBLIC_HEADERS"             # single argument params
    "PUBLIC_HEADERS;PRIVATE_HEADERS;SOURCES"  # list params

    ${ARGV}
  )

  if (PARAM_STATIC AND PARAM_SHARED)
    message(FATAL_ERROR "STATIC *and* SHARED not possible")
  endif()
  if (PARAM_STATIC)
    set(how "STATIC")
  elseif(PARAM_SHARED)
    set(how "SHARED")
  endif()

  foreach (f ${PARAM_PUBLIC_HEADERS})
    list(APPEND public_headers "include/public/${f}")
  endforeach()
  foreach (f ${PARAM_PRIVATE_HEADERS})
    list(APPEND private_headers "include/private/${f}")
  endforeach()
  foreach (f ${PARAM_SOURCES})
    list(APPEND sources "src/${f}")
  endforeach()

  add_library(
    ${PARAM_NAME}

    ${how}

    ${public_headers}
    ${private_headers}
    ${sources}
  )

  target_include_directories(${PARAM_NAME} PUBLIC include/public)
  target_include_directories(${PARAM_NAME} PRIVATE include/private)

  install(TARGETS ${PARAM_NAME} DESTINATION lib)
  install(FILES ${public_headers} DESTINATION "include/${PARAM_INSTALL_PUBLIC_HEADERS}")

endfunction()
