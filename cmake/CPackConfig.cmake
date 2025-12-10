# --- GENERAL PACKAGING SETTINGS ---
set(CPACK_PACKAGE_NAME "cpackexample")
set(CPACK_PACKAGE_VENDOR "Simulation Software Engineering")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Example CPack Project")
set(CPACK_PACKAGE_DESCRIPTION "A simple C++ project demonstrating CPack capabilities.")
set(CPACK_PACKAGE_CONTACT "murugapy")

# Use version from the main CMakeLists.txt
set(CPACK_PACKAGE_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${PROJECT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${PROJECT_VERSION_PATCH})

set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/prasithbasky/cpack-exercise")

# Generators: Create a .tar.gz archive and a .deb package
set(CPACK_GENERATOR "TGZ;DEB")

# Source generator
set(CPACK_SOURCE_GENERATOR "TGZ")

# --- DEBIAN SPECIFIC SETTINGS ---

set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)

set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON)

set(CPACK_DEBIAN_PACKAGE_SECTION "devel")
set(CPACK_DEBIAN_PACKAGE_PRIORITY "optional")

# --- INCLUDE CPACK ---
include(CPack)
