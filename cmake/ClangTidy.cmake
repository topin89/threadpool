macro(add_tidy_sources)
  get_filename_component(ABS_SRC ${ARGV0} ABSOLUTE)
  list(APPEND TIDY_SOURCES "${ABS_SRC}")
  set(TIDY_SOURCES "${TIDY_SOURCES}" PARENT_SCOPE)
endmacro()
