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
include /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/depend.make

# Include the progress variables for this target.
include /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/progress.make

# Include the compile flags for this target's objects.
include /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/flags.make

/Users/computer/Coding/opengl-experiments/lib/glfw/examples/boing.app/Contents/Resources/glfw.icns: /Users/computer/Coding/opengl-experiments/lib/glfw/examples/glfw.icns
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content /Users/computer/Coding/opengl-experiments/lib/glfw/examples/boing.app/Contents/Resources/glfw.icns"
	$(CMAKE_COMMAND) -E copy /Users/computer/Coding/opengl-experiments/lib/glfw/examples/glfw.icns /Users/computer/Coding/opengl-experiments/lib/glfw/examples/boing.app/Contents/Resources/glfw.icns

/Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/boing.c.o: /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/flags.make
/Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/boing.c.o: /Users/computer/Coding/opengl-experiments/lib/glfw/examples/boing.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/computer/Coding/opengl-experiments/experiments/hello_triangle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/boing.c.o"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/boing.dir/boing.c.o -c /Users/computer/Coding/opengl-experiments/lib/glfw/examples/boing.c

/Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/boing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/boing.dir/boing.c.i"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/computer/Coding/opengl-experiments/lib/glfw/examples/boing.c > CMakeFiles/boing.dir/boing.c.i

/Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/boing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/boing.dir/boing.c.s"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/computer/Coding/opengl-experiments/lib/glfw/examples/boing.c -o CMakeFiles/boing.dir/boing.c.s

/Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad_gl.c.o: /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/flags.make
/Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad_gl.c.o: /Users/computer/Coding/opengl-experiments/lib/glfw/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/computer/Coding/opengl-experiments/experiments/hello_triangle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad_gl.c.o"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/boing.dir/__/deps/glad_gl.c.o -c /Users/computer/Coding/opengl-experiments/lib/glfw/deps/glad_gl.c

/Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/boing.dir/__/deps/glad_gl.c.i"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/computer/Coding/opengl-experiments/lib/glfw/deps/glad_gl.c > CMakeFiles/boing.dir/__/deps/glad_gl.c.i

/Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/boing.dir/__/deps/glad_gl.c.s"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/computer/Coding/opengl-experiments/lib/glfw/deps/glad_gl.c -o CMakeFiles/boing.dir/__/deps/glad_gl.c.s

# Object files for target boing
boing_OBJECTS = \
"CMakeFiles/boing.dir/boing.c.o" \
"CMakeFiles/boing.dir/__/deps/glad_gl.c.o"

# External object files for target boing
boing_EXTERNAL_OBJECTS =

/Users/computer/Coding/opengl-experiments/lib/glfw/examples/boing.app/Contents/MacOS/boing: /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/boing.c.o
/Users/computer/Coding/opengl-experiments/lib/glfw/examples/boing.app/Contents/MacOS/boing: /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad_gl.c.o
/Users/computer/Coding/opengl-experiments/lib/glfw/examples/boing.app/Contents/MacOS/boing: /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/build.make
/Users/computer/Coding/opengl-experiments/lib/glfw/examples/boing.app/Contents/MacOS/boing: /Users/computer/Coding/opengl-experiments/lib/glfw/src/libglfw3.a
/Users/computer/Coding/opengl-experiments/lib/glfw/examples/boing.app/Contents/MacOS/boing: /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/computer/Coding/opengl-experiments/experiments/hello_triangle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable boing.app/Contents/MacOS/boing"
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
/Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/build: /Users/computer/Coding/opengl-experiments/lib/glfw/examples/boing.app/Contents/MacOS/boing
/Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/build: /Users/computer/Coding/opengl-experiments/lib/glfw/examples/boing.app/Contents/Resources/glfw.icns

.PHONY : /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/build

/Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/clean:
	cd /Users/computer/Coding/opengl-experiments/lib/glfw/examples && $(CMAKE_COMMAND) -P CMakeFiles/boing.dir/cmake_clean.cmake
.PHONY : /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/clean

/Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/depend:
	cd /Users/computer/Coding/opengl-experiments/experiments/hello_triangle/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/computer/Coding/opengl-experiments/experiments/hello_triangle /Users/computer/Coding/opengl-experiments/lib/glfw/examples /Users/computer/Coding/opengl-experiments/experiments/hello_triangle/build /Users/computer/Coding/opengl-experiments/lib/glfw/examples /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : /Users/computer/Coding/opengl-experiments/lib/glfw/examples/CMakeFiles/boing.dir/depend

