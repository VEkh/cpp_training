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
CMAKE_SOURCE_DIR = /home/vekh/apps/cpp_training/collatz-conjecture

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vekh/apps/cpp_training/collatz-conjecture/build

# Utility rule file for test_collatz-conjecture.

# Include the progress variables for this target.
include CMakeFiles/test_collatz-conjecture.dir/progress.make

CMakeFiles/test_collatz-conjecture: collatz-conjecture
	./collatz-conjecture

test_collatz-conjecture: CMakeFiles/test_collatz-conjecture
test_collatz-conjecture: CMakeFiles/test_collatz-conjecture.dir/build.make

.PHONY : test_collatz-conjecture

# Rule to build all files generated by this target.
CMakeFiles/test_collatz-conjecture.dir/build: test_collatz-conjecture

.PHONY : CMakeFiles/test_collatz-conjecture.dir/build

CMakeFiles/test_collatz-conjecture.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_collatz-conjecture.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_collatz-conjecture.dir/clean

CMakeFiles/test_collatz-conjecture.dir/depend:
	cd /home/vekh/apps/cpp_training/collatz-conjecture/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vekh/apps/cpp_training/collatz-conjecture /home/vekh/apps/cpp_training/collatz-conjecture /home/vekh/apps/cpp_training/collatz-conjecture/build /home/vekh/apps/cpp_training/collatz-conjecture/build /home/vekh/apps/cpp_training/collatz-conjecture/build/CMakeFiles/test_collatz-conjecture.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_collatz-conjecture.dir/depend

