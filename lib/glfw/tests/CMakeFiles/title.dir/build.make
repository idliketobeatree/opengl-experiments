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
CMAKE_SOURCE_DIR = /Users/computer/Coding/opengl-experiments/experiments/hello_camera

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/computer/Coding/opengl-experiments/experiments/hello_camera/build

# Include any dependencies generated for this target.
include /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/depend.make

# Include the progress variables for this target.
include /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/progress.make

# Include the compile flags for this target's objects.
include /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/flags.make

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/title.c.o: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/flags.make
/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/title.c.o: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/title.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/computer/Coding/opengl-experiments/experiments/hello_camera/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/title.c.o"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/title.dir/title.c.o -c /Users/computer/Coding/opengl-experiments/lib/glfw/tests/title.c

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/title.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/title.dir/title.c.i"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/computer/Coding/opengl-experiments/lib/glfw/tests/title.c > CMakeFiles/title.dir/title.c.i

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/title.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/title.dir/title.c.s"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/computer/Coding/opengl-experiments/lib/glfw/tests/title.c -o CMakeFiles/title.dir/title.c.s

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/flags.make
/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o: /Users/computer/Coding/opengl-experiments/lib/glfw/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/computer/Coding/opengl-experiments/experiments/hello_camera/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/title.dir/__/deps/glad_gl.c.o -c /Users/computer/Coding/opengl-experiments/lib/glfw/deps/glad_gl.c

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/title.dir/__/deps/glad_gl.c.i"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/computer/Coding/opengl-experiments/lib/glfw/deps/glad_gl.c > CMakeFiles/title.dir/__/deps/glad_gl.c.i

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/title.dir/__/deps/glad_gl.c.s"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/computer/Coding/opengl-experiments/lib/glfw/deps/glad_gl.c -o CMakeFiles/title.dir/__/deps/glad_gl.c.s

# Object files for target title
title_OBJECTS = \
"CMakeFiles/title.dir/title.c.o" \
"CMakeFiles/title.dir/__/deps/glad_gl.c.o"

# External object files for target title
title_EXTERNAL_OBJECTS =

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/title.app/Contents/MacOS/title: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/title.c.o
/Users/computer/Coding/opengl-experiments/lib/glfw/tests/title.app/Contents/MacOS/title: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o
/Users/computer/Coding/opengl-experiments/lib/glfw/tests/title.app/Contents/MacOS/title: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/build.make
/Users/computer/Coding/opengl-experiments/lib/glfw/tests/title.app/Contents/MacOS/title: /Users/computer/Coding/opengl-experiments/lib/glfw/src/libglfw3.a
/Users/computer/Coding/opengl-experiments/lib/glfw/tests/title.app/Contents/MacOS/title: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/computer/Coding/opengl-experiments/experiments/hello_camera/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable title.app/Contents/MacOS/title"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/title.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/build: /Users/computer/Coding/opengl-experiments/lib/glfw/tests/title.app/Contents/MacOS/title

.PHONY : /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/build

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/clean:
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/title.dir/cmake_clean.cmake
.PHONY : /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/clean

/Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/depend:
	cd /Users/computer/Coding/opengl-experiments/experiments/hello_camera/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/computer/Coding/opengl-experiments/experiments/hello_camera /Users/computer/Coding/opengl-experiments/lib/glfw/tests /Users/computer/Coding/opengl-experiments/experiments/hello_camera/build /Users/computer/Coding/opengl-experiments/lib/glfw/tests /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : /Users/computer/Coding/opengl-experiments/lib/glfw/tests/CMakeFiles/title.dir/depend

