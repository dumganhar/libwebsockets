message (STATUS "Setting up iPhoneSimulator toolchain")
set (IPHONESIMULATOR TRUE)

# Standard settings
set (CMAKE_SYSTEM_NAME iOS)
# Include extra modules for the iOS platform files
set (CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/ios/cmake/Modules")

# Force the compilers to gcc for iOS
include (CMakeForceCompiler)
CMAKE_FORCE_C_COMPILER (gcc gcc)
CMAKE_FORCE_CXX_COMPILER (g++ g++)

set (CMAKE_C_SIZEOF_DATA_PTR 4)
set (CMAKE_C_HAS_ISYSROOT 1)
set (CMAKE_C_COMPILER_ABI ELF)
set (CMAKE_CXX_SIZEOF_DATA_PTR 4)
set (CMAKE_CXX_HAS_ISYSROOT 1)
set (CMAKE_CXX_COMPILER_ABI ELF)

# Skip the platform compiler checks for cross compiling
set (CMAKE_CXX_COMPILER_WORKS TRUE)
set (CMAKE_C_COMPILER_WORKS TRUE)

# Search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ONLY)
#   for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

message (STATUS "iPhoneSimulator toolchain loaded")
