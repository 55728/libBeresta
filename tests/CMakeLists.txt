set(
  TESTS_NAMES
    t001_version
    t002_minimal_empty
)
foreach(test ${TESTS_NAMES})
  add_executable(${test} ${test}.c)
  target_link_libraries(${test} PUBLIC brst)
  if(UNIX AND NOT APPLE)
    target_link_libraries(${test} PUBLIC m)
  endif()
endforeach()
