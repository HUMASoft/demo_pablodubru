# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/humasoft/demo_pablodubru/prueba1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/humasoft/demo_pablodubru/build-prueba1-Desktop-Default

# Include any dependencies generated for this target.
include CMakeFiles/MathFunctions.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MathFunctions.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MathFunctions.dir/flags.make

CMakeFiles/MathFunctions.dir/mysqrt.cpp.o: CMakeFiles/MathFunctions.dir/flags.make
CMakeFiles/MathFunctions.dir/mysqrt.cpp.o: /home/humasoft/demo_pablodubru/prueba1/mysqrt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/humasoft/demo_pablodubru/build-prueba1-Desktop-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MathFunctions.dir/mysqrt.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MathFunctions.dir/mysqrt.cpp.o -c /home/humasoft/demo_pablodubru/prueba1/mysqrt.cpp

CMakeFiles/MathFunctions.dir/mysqrt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MathFunctions.dir/mysqrt.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/humasoft/demo_pablodubru/prueba1/mysqrt.cpp > CMakeFiles/MathFunctions.dir/mysqrt.cpp.i

CMakeFiles/MathFunctions.dir/mysqrt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MathFunctions.dir/mysqrt.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/humasoft/demo_pablodubru/prueba1/mysqrt.cpp -o CMakeFiles/MathFunctions.dir/mysqrt.cpp.s

# Object files for target MathFunctions
MathFunctions_OBJECTS = \
"CMakeFiles/MathFunctions.dir/mysqrt.cpp.o"

# External object files for target MathFunctions
MathFunctions_EXTERNAL_OBJECTS =

libMathFunctions.a: CMakeFiles/MathFunctions.dir/mysqrt.cpp.o
libMathFunctions.a: CMakeFiles/MathFunctions.dir/build.make
libMathFunctions.a: CMakeFiles/MathFunctions.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/humasoft/demo_pablodubru/build-prueba1-Desktop-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libMathFunctions.a"
	$(CMAKE_COMMAND) -P CMakeFiles/MathFunctions.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MathFunctions.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MathFunctions.dir/build: libMathFunctions.a

.PHONY : CMakeFiles/MathFunctions.dir/build

CMakeFiles/MathFunctions.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MathFunctions.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MathFunctions.dir/clean

CMakeFiles/MathFunctions.dir/depend:
	cd /home/humasoft/demo_pablodubru/build-prueba1-Desktop-Default && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/humasoft/demo_pablodubru/prueba1 /home/humasoft/demo_pablodubru/prueba1 /home/humasoft/demo_pablodubru/build-prueba1-Desktop-Default /home/humasoft/demo_pablodubru/build-prueba1-Desktop-Default /home/humasoft/demo_pablodubru/build-prueba1-Desktop-Default/CMakeFiles/MathFunctions.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MathFunctions.dir/depend

