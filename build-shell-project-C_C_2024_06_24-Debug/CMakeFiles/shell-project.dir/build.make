# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /root/C++程序设计课程设计/shell/shell-project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/C++程序设计课程设计/shell/build-shell-project-C_C_2024_06_24-Debug

# Include any dependencies generated for this target.
include CMakeFiles/shell-project.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/shell-project.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/shell-project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/shell-project.dir/flags.make

CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.o: CMakeFiles/shell-project.dir/flags.make
CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.o: shell-project_autogen/mocs_compilation.cpp
CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.o: CMakeFiles/shell-project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/root/C++程序设计课程设计/shell/build-shell-project-C_C_2024_06_24-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.o -MF CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.o -c /root/C++程序设计课程设计/shell/build-shell-project-C_C_2024_06_24-Debug/shell-project_autogen/mocs_compilation.cpp

CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/C++程序设计课程设计/shell/build-shell-project-C_C_2024_06_24-Debug/shell-project_autogen/mocs_compilation.cpp > CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.i

CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/C++程序设计课程设计/shell/build-shell-project-C_C_2024_06_24-Debug/shell-project_autogen/mocs_compilation.cpp -o CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.s

CMakeFiles/shell-project.dir/main.cpp.o: CMakeFiles/shell-project.dir/flags.make
CMakeFiles/shell-project.dir/main.cpp.o: /root/C++程序设计课程设计/shell/shell-project/main.cpp
CMakeFiles/shell-project.dir/main.cpp.o: CMakeFiles/shell-project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/root/C++程序设计课程设计/shell/build-shell-project-C_C_2024_06_24-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/shell-project.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/shell-project.dir/main.cpp.o -MF CMakeFiles/shell-project.dir/main.cpp.o.d -o CMakeFiles/shell-project.dir/main.cpp.o -c /root/C++程序设计课程设计/shell/shell-project/main.cpp

CMakeFiles/shell-project.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/shell-project.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/C++程序设计课程设计/shell/shell-project/main.cpp > CMakeFiles/shell-project.dir/main.cpp.i

CMakeFiles/shell-project.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/shell-project.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/C++程序设计课程设计/shell/shell-project/main.cpp -o CMakeFiles/shell-project.dir/main.cpp.s

CMakeFiles/shell-project.dir/shell.cpp.o: CMakeFiles/shell-project.dir/flags.make
CMakeFiles/shell-project.dir/shell.cpp.o: /root/C++程序设计课程设计/shell/shell-project/shell.cpp
CMakeFiles/shell-project.dir/shell.cpp.o: CMakeFiles/shell-project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/root/C++程序设计课程设计/shell/build-shell-project-C_C_2024_06_24-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/shell-project.dir/shell.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/shell-project.dir/shell.cpp.o -MF CMakeFiles/shell-project.dir/shell.cpp.o.d -o CMakeFiles/shell-project.dir/shell.cpp.o -c /root/C++程序设计课程设计/shell/shell-project/shell.cpp

CMakeFiles/shell-project.dir/shell.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/shell-project.dir/shell.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/C++程序设计课程设计/shell/shell-project/shell.cpp > CMakeFiles/shell-project.dir/shell.cpp.i

CMakeFiles/shell-project.dir/shell.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/shell-project.dir/shell.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/C++程序设计课程设计/shell/shell-project/shell.cpp -o CMakeFiles/shell-project.dir/shell.cpp.s

# Object files for target shell-project
shell__project_OBJECTS = \
"CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/shell-project.dir/main.cpp.o" \
"CMakeFiles/shell-project.dir/shell.cpp.o"

# External object files for target shell-project
shell__project_EXTERNAL_OBJECTS =

shell-project: CMakeFiles/shell-project.dir/shell-project_autogen/mocs_compilation.cpp.o
shell-project: CMakeFiles/shell-project.dir/main.cpp.o
shell-project: CMakeFiles/shell-project.dir/shell.cpp.o
shell-project: CMakeFiles/shell-project.dir/build.make
shell-project: /opt/Qt/6.5.3/gcc_64/lib/libQt6Core.so.6.5.3
shell-project: CMakeFiles/shell-project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/root/C++程序设计课程设计/shell/build-shell-project-C_C_2024_06_24-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable shell-project"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shell-project.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/shell-project.dir/build: shell-project
.PHONY : CMakeFiles/shell-project.dir/build

CMakeFiles/shell-project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/shell-project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/shell-project.dir/clean

CMakeFiles/shell-project.dir/depend:
	cd /root/C++程序设计课程设计/shell/build-shell-project-C_C_2024_06_24-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/C++程序设计课程设计/shell/shell-project /root/C++程序设计课程设计/shell/shell-project /root/C++程序设计课程设计/shell/build-shell-project-C_C_2024_06_24-Debug /root/C++程序设计课程设计/shell/build-shell-project-C_C_2024_06_24-Debug /root/C++程序设计课程设计/shell/build-shell-project-C_C_2024_06_24-Debug/CMakeFiles/shell-project.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/shell-project.dir/depend

