# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vekh/apps/cpp_training/luhn

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vekh/apps/cpp_training/luhn/build

# Utility rule file for test_luhn.

# Include the progress variables for this target.
include CMakeFiles/test_luhn.dir/progress.make

CMakeFiles/test_luhn: luhn
	./luhn

test_luhn: CMakeFiles/test_luhn
test_luhn: CMakeFiles/test_luhn.dir/build.make

.PHONY : test_luhn

# Rule to build all files generated by this target.
CMakeFiles/test_luhn.dir/build: test_luhn

.PHONY : CMakeFiles/test_luhn.dir/build

CMakeFiles/test_luhn.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_luhn.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_luhn.dir/clean

CMakeFiles/test_luhn.dir/depend:
	cd /home/vekh/apps/cpp_training/luhn/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vekh/apps/cpp_training/luhn /home/vekh/apps/cpp_training/luhn /home/vekh/apps/cpp_training/luhn/build /home/vekh/apps/cpp_training/luhn/build /home/vekh/apps/cpp_training/luhn/build/CMakeFiles/test_luhn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_luhn.dir/depend

