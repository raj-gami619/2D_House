# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /home/rajgami/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/212.5457.51/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/rajgami/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/212.5457.51/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rajgami/CLionProjects/Computer_Graphics/2D_House

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rajgami/CLionProjects/Computer_Graphics/2D_House/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/2D_House.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/2D_House.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2D_House.dir/flags.make

CMakeFiles/2D_House.dir/main.cpp.o: CMakeFiles/2D_House.dir/flags.make
CMakeFiles/2D_House.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rajgami/CLionProjects/Computer_Graphics/2D_House/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/2D_House.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/2D_House.dir/main.cpp.o -c /home/rajgami/CLionProjects/Computer_Graphics/2D_House/main.cpp

CMakeFiles/2D_House.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2D_House.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rajgami/CLionProjects/Computer_Graphics/2D_House/main.cpp > CMakeFiles/2D_House.dir/main.cpp.i

CMakeFiles/2D_House.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2D_House.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rajgami/CLionProjects/Computer_Graphics/2D_House/main.cpp -o CMakeFiles/2D_House.dir/main.cpp.s

# Object files for target 2D_House
2D_House_OBJECTS = \
"CMakeFiles/2D_House.dir/main.cpp.o"

# External object files for target 2D_House
2D_House_EXTERNAL_OBJECTS =

2D_House: CMakeFiles/2D_House.dir/main.cpp.o
2D_House: CMakeFiles/2D_House.dir/build.make
2D_House: CMakeFiles/2D_House.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rajgami/CLionProjects/Computer_Graphics/2D_House/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 2D_House"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/2D_House.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2D_House.dir/build: 2D_House
.PHONY : CMakeFiles/2D_House.dir/build

CMakeFiles/2D_House.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/2D_House.dir/cmake_clean.cmake
.PHONY : CMakeFiles/2D_House.dir/clean

CMakeFiles/2D_House.dir/depend:
	cd /home/rajgami/CLionProjects/Computer_Graphics/2D_House/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rajgami/CLionProjects/Computer_Graphics/2D_House /home/rajgami/CLionProjects/Computer_Graphics/2D_House /home/rajgami/CLionProjects/Computer_Graphics/2D_House/cmake-build-debug /home/rajgami/CLionProjects/Computer_Graphics/2D_House/cmake-build-debug /home/rajgami/CLionProjects/Computer_Graphics/2D_House/cmake-build-debug/CMakeFiles/2D_House.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/2D_House.dir/depend
