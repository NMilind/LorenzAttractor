# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/nikhil/Code/LorenzAttractor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/nikhil/Code/LorenzAttractor/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/LorenzAttractor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LorenzAttractor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LorenzAttractor.dir/flags.make

CMakeFiles/LorenzAttractor.dir/main.cpp.o: CMakeFiles/LorenzAttractor.dir/flags.make
CMakeFiles/LorenzAttractor.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nikhil/Code/LorenzAttractor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LorenzAttractor.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LorenzAttractor.dir/main.cpp.o -c /Users/nikhil/Code/LorenzAttractor/main.cpp

CMakeFiles/LorenzAttractor.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LorenzAttractor.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nikhil/Code/LorenzAttractor/main.cpp > CMakeFiles/LorenzAttractor.dir/main.cpp.i

CMakeFiles/LorenzAttractor.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LorenzAttractor.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nikhil/Code/LorenzAttractor/main.cpp -o CMakeFiles/LorenzAttractor.dir/main.cpp.s

CMakeFiles/LorenzAttractor.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/LorenzAttractor.dir/main.cpp.o.requires

CMakeFiles/LorenzAttractor.dir/main.cpp.o.provides: CMakeFiles/LorenzAttractor.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/LorenzAttractor.dir/build.make CMakeFiles/LorenzAttractor.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/LorenzAttractor.dir/main.cpp.o.provides

CMakeFiles/LorenzAttractor.dir/main.cpp.o.provides.build: CMakeFiles/LorenzAttractor.dir/main.cpp.o


CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o: CMakeFiles/LorenzAttractor.dir/flags.make
CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o: ../lorenz.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nikhil/Code/LorenzAttractor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o -c /Users/nikhil/Code/LorenzAttractor/lorenz.cpp

CMakeFiles/LorenzAttractor.dir/lorenz.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LorenzAttractor.dir/lorenz.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nikhil/Code/LorenzAttractor/lorenz.cpp > CMakeFiles/LorenzAttractor.dir/lorenz.cpp.i

CMakeFiles/LorenzAttractor.dir/lorenz.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LorenzAttractor.dir/lorenz.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nikhil/Code/LorenzAttractor/lorenz.cpp -o CMakeFiles/LorenzAttractor.dir/lorenz.cpp.s

CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o.requires:

.PHONY : CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o.requires

CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o.provides: CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o.requires
	$(MAKE) -f CMakeFiles/LorenzAttractor.dir/build.make CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o.provides.build
.PHONY : CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o.provides

CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o.provides.build: CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o


CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o: CMakeFiles/LorenzAttractor.dir/flags.make
CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o: ../vertex3d.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nikhil/Code/LorenzAttractor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o -c /Users/nikhil/Code/LorenzAttractor/vertex3d.cpp

CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nikhil/Code/LorenzAttractor/vertex3d.cpp > CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.i

CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nikhil/Code/LorenzAttractor/vertex3d.cpp -o CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.s

CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o.requires:

.PHONY : CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o.requires

CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o.provides: CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o.requires
	$(MAKE) -f CMakeFiles/LorenzAttractor.dir/build.make CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o.provides.build
.PHONY : CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o.provides

CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o.provides.build: CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o


# Object files for target LorenzAttractor
LorenzAttractor_OBJECTS = \
"CMakeFiles/LorenzAttractor.dir/main.cpp.o" \
"CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o" \
"CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o"

# External object files for target LorenzAttractor
LorenzAttractor_EXTERNAL_OBJECTS =

LorenzAttractor: CMakeFiles/LorenzAttractor.dir/main.cpp.o
LorenzAttractor: CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o
LorenzAttractor: CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o
LorenzAttractor: CMakeFiles/LorenzAttractor.dir/build.make
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro.5.2.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro.5.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_acodec.5.2.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_acodec.5.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_acodec.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_audio.5.2.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_audio.5.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_audio.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_color.5.2.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_color.5.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_color.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_dialog.5.2.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_dialog.5.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_dialog.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_font.5.2.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_font.5.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_font.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_image.5.2.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_image.5.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_image.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_main.5.2.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_main.5.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_main.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_memfile.5.2.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_memfile.5.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_memfile.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_physfs.5.2.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_physfs.5.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_physfs.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_primitives.5.2.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_primitives.5.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_primitives.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_ttf.5.2.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_ttf.5.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_ttf.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_video.5.2.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_video.5.2.dylib
LorenzAttractor: /usr/local/Cellar/allegro/5.2.2/lib/liballegro_video.dylib
LorenzAttractor: CMakeFiles/LorenzAttractor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/nikhil/Code/LorenzAttractor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable LorenzAttractor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LorenzAttractor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LorenzAttractor.dir/build: LorenzAttractor

.PHONY : CMakeFiles/LorenzAttractor.dir/build

CMakeFiles/LorenzAttractor.dir/requires: CMakeFiles/LorenzAttractor.dir/main.cpp.o.requires
CMakeFiles/LorenzAttractor.dir/requires: CMakeFiles/LorenzAttractor.dir/lorenz.cpp.o.requires
CMakeFiles/LorenzAttractor.dir/requires: CMakeFiles/LorenzAttractor.dir/vertex3d.cpp.o.requires

.PHONY : CMakeFiles/LorenzAttractor.dir/requires

CMakeFiles/LorenzAttractor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LorenzAttractor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LorenzAttractor.dir/clean

CMakeFiles/LorenzAttractor.dir/depend:
	cd /Users/nikhil/Code/LorenzAttractor/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nikhil/Code/LorenzAttractor /Users/nikhil/Code/LorenzAttractor /Users/nikhil/Code/LorenzAttractor/cmake-build-debug /Users/nikhil/Code/LorenzAttractor/cmake-build-debug /Users/nikhil/Code/LorenzAttractor/cmake-build-debug/CMakeFiles/LorenzAttractor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LorenzAttractor.dir/depend

