# ------------------------------------------------------------------------------
# Top-level compiler configuration script
#
# Performs a check for the required minimum version of the compiler
# and delegates the actual configuration to the appropriate file in the
# compilers subdirectory
# ------------------------------------------------------------------------------
# GCC >= 4.2
if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU" AND
    CMAKE_CXX_COMPILER_VERSION VERSION_LESS 4.2)
  message(FATAL_ERROR "GCC 4.2 or later is required.")
else ()
  include (Compilers/GNUConfig)
endif ()

