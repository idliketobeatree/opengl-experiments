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

# Include any dependencies generated for this target.
include /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/depend.make

# Include the progress variables for this target.
include /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/progress.make

# Include the compile flags for this target's objects.
include /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/flags.make

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/flags.make
/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/tearing.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/computer/Coding/opengl-experiments/experiments/hello_triangle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tearing.dir/tearing.c.o -c /Users/computer/Coding/opengl-experiments/lib/glfw/tests/tearing.c

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/tearing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tearing.dir/tearing.c.i"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/computer/Coding/opengl-experiments/lib/glfw/tests/tearing.c > CMakeFiles/tearing.dir/tearing.c.i

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/tearing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tearing.dir/tearing.c.s"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/computer/Coding/opengl-experiments/lib/glfw/tests/tearing.c -o CMakeFiles/tearing.dir/tearing.c.s

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.o: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/flags.make
/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.o: /Users/computer/Coding/opengl-experiments/lib/glfw/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/computer/Coding/opengl-experiments/experiments/hello_triangle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.o"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tearing.dir/__/deps/glad_gl.c.o -c /Users/computer/Coding/opengl-experiments/lib/glfw/deps/glad_gl.c

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tearing.dir/__/deps/glad_gl.c.i"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/computer/Coding/opengl-experiments/lib/glfw/deps/glad_gl.c > CMakeFiles/tearing.dir/__/deps/glad_gl.c.i

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tearing.dir/__/deps/glad_gl.c.s"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/computer/Coding/opengl-experiments/lib/glfw/deps/glad_gl.c -o CMakeFiles/tearing.dir/__/deps/glad_gl.c.s

# Object files for target tearing
tearing_OBJECTS = \
"CMakeFiles/tearing.dir/tearing.c.o" \
"CMakeFiles/tearing.dir/__/deps/glad_gl.c.o"

# External object files for target tearing
tearing_EXTERNAL_OBJECTS =

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/tearing.app/Contents/MacOS/tearing: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/tearing.c.o
/Users/computer/Coding/opengl-experiments/lib/glfw/tests/tearing.app/Contents/MacOS/tearing: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.o
/Users/computer/Coding/opengl-experiments/lib/glfw/tests/tearing.app/Contents/MacOS/tearing: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/build.make
/Users/computer/Coding/opengl-experiments/lib/glfw/tests/tearing.app/Contents/MacOS/tearing: /Users/computer/Coding/opengl-experiments/lib/glfw/src/libglfw3.a
/Users/computer/Coding/opengl-experiments/lib/glfw/tests/tearing.app/Contents/MacOS/tearing: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/computer/Coding/opengl-experiments/experiments/hello_triangle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable tearing.app/Contents/MacOS/tearing"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tearing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/build: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/tearing.app/Contents/MacOS/tearing

.PHONY : /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/build

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/clean:
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/tearing.dir/cmake_clean.cmake
.PHONY : /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/clean

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/depend:
	cd /Users/computer/Coding/opengl-experiments/experiments/hello_triangle/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/computer/Coding/opengl-experiments/experiments/hello_triangle /Users/computer/Coding/opengl-experiments/lib/glfw/tests /Users/computer/Coding/opengl-experiments/experiments/hello_triangle/build /Users/computer/Coding/opengl-experiments/lib/glfw/tests /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/tearing.dir/depend

