# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/computer/Coding/opengl-experiments/experiments/hello_triangle

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/computer/Coding/opengl-experiments/experiments/hello_triangle/build

# Utility rule file for docs.

# Include the progress variables for this target.
include /Users/computer/Coding/opengl-experiments/lib/glfw/docs/CMakeFiles/docs.dir/progress.make

/Users/computer/Coding/opengl-experiments/lib/glfw/docs/CMakeFiles/docs:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/computer/Coding/opengl-experiments/experiments/hello_triangle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating HTML documentation"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/docs && /usr/local/bin/doxygen

docs: /Users/computer/Coding/opengl-experiments/lib/glfw/docs/CMakeFiles/docs
docs: /Users/computer/Coding/opengl-experiments/lib/glfw/docs/CMakeFiles/docs.dir/build.make

.PHONY : docs

# Rule to build all files generated by this target.
/Users/computer/Coding/opengl-experiments/lib/glfw/docs/CMakeFiles/docs.dir/build: docs

.PHONY : /Users/computer/Coding/opengl-experiments/lib/glfw/docs/CMakeFiles/docs.dir/build

/Users/computer/Coding/opengl-experiments/lib/glfw/docs/CMakeFiles/docs.dir/clean:
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/docs && $(CMAKE_COMMAND) -P CMakeFiles/docs.dir/cmake_clean.cmake
.PHONY : /Users/computer/Coding/opengl-experiments/lib/glfw/docs/CMakeFiles/docs.dir/clean

/Users/computer/Coding/opengl-experiments/lib/glfw/docs/CMakeFiles/docs.dir/depend:
	cd /Users/computer/Coding/opengl-experiments/experiments/hello_triangle/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/computer/Coding/opengl-experiments/experiments/hello_triangle /Users/computer/Coding/opengl-experiments/lib/glfw/docs /Users/computer/Coding/opengl-experiments/experiments/hello_triangle/build /Users/computer/Coding/opengl-experiments/lib/glfw/docs /Users/computer/Coding/opengl-experiments/lib/glfw/docs/CMakeFiles/docs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : /Users/computer/Coding/opengl-experiments/lib/glfw/docs/CMakeFiles/docs.dir/depend

