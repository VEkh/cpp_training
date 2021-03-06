cmake_minimum_required(VERSION 3.10)

project(tutorial VERSION 0.0.1)

set(CMAKE_DEBUG_POSTFIX d)
add_library(tutorial_compiler_flags INTERFACE)
target_compile_features(tutorial_compiler_flags INTERFACE cxx_std_11)

set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")
target_compile_options(
  tutorial_compiler_flags
  INTERFACE
    "$<${gcc_like_cxx}:$<BUILD_INTERFACE:-Wall;-Wextra;-Wshadow;-Wformat=2;-Wunused>>"
    "$<${msvc_cxx}:$<BUILD_INTERFACE:-W3>>")

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)

configure_file(tutorial_config.h.in tutorial_config.h)
add_subdirectory(MathFunctions)

add_executable(tutorial tutorial.cpp)
set_target_properties(tutorial PROPERTIES DEBUG_POSTFIX ${CMAKE_DEBUG_POSTFIX})

target_link_libraries(tutorial PUBLIC MathFunctions)
target_include_directories(tutorial PUBLIC "${PROJECT_BINARY_DIR}")

install(TARGETS tutorial DESTINATION bin)
install(FILES "${PROJECT_BINARY_DIR}/tutorial_config.h" DESTINATION include)
include(CTest)

# does the application run
add_test(NAME Runs COMMAND tutorial 25)

# does the usage message work?
add_test(NAME Usage COMMAND tutorial)
set_tests_properties(Usage PROPERTIES PASS_REGULAR_EXPRESSION "Usage:.*number")

# define a function to simplify adding tests
function(do_test target arg result)
  add_test(NAME Comp${arg} COMMAND ${target} ${arg})
  set_tests_properties(Comp${arg} PROPERTIES PASS_REGULAR_EXPRESSION ${result})
endfunction(do_test)

# do a bunch of result based tests
do_test(tutorial 4 "4 is 2")
do_test(tutorial 9 "9 is 3")
do_test(tutorial 5 "5 is 2.236")
do_test(tutorial 7 "7 is 2.645")
do_test(tutorial 25 "25 is 5")
do_test(tutorial -25 "-25 is [-nan|nan|0]")
do_test(tutorial 0.0001 "0.0001 is 0.01")

include(InstallRequiredSystemLibraries)
set(CPACK_PACKAGE_VERSION_MAJOR "${tutorial_VERSION_MAJOR}")
set(CPACK_PACKAGE_VERSION_MINOR "${tutorial_VERSION_MINOR}")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/License.txt")
include(CPack)

install(
  EXPORT MathFunctionsTargets
  FILE MathFunctionsTargets.cmake
  DESTINATION "lib/cmake/MathFunctions")

include(CMakePackageConfigHelpers)
configure_package_config_file(
  ${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
  "${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsConfig.cmake" INSTALL_DESTINATION
  "lib/cmake/example" NO_SET_AND_CHECK_MACRO NO_CHECK_REQUIRED_COMPONENTS_MACRO)

write_basic_package_version_file(
  "${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsConfigVersion.cmake"
  VERSION "${tutorial_VERSION_MAJOR}.${tutorial_VERSION_MINOR}"
  COMPATIBILITY AnyNewerVersion)

install(FILES ${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsConfig.cmake
        DESTINATION "lib/cmake/MathFunctions")

export(EXPORT MathFunctionsTargets
       FILE "${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsTargets.cmake")
