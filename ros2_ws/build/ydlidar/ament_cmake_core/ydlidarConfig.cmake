# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_ydlidar_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED ydlidar_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(ydlidar_FOUND FALSE)
  elseif(NOT ydlidar_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(ydlidar_FOUND FALSE)
  endif()
  return()
endif()
set(_ydlidar_CONFIG_INCLUDED TRUE)

# output package information
if(NOT ydlidar_FIND_QUIETLY)
  message(STATUS "Found ydlidar: 1.4.5 (${ydlidar_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'ydlidar' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${ydlidar_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(ydlidar_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${ydlidar_DIR}/${_extra}")
endforeach()
