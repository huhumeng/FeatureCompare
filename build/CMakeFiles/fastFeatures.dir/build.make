# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ling/slamBook/code-source/FastFeatures

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ling/slamBook/code-source/FastFeatures/build

# Include any dependencies generated for this target.
include CMakeFiles/fastFeatures.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/fastFeatures.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fastFeatures.dir/flags.make

CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o: CMakeFiles/fastFeatures.dir/flags.make
CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o: ../src/fastFeatures.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ling/slamBook/code-source/FastFeatures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o -c /home/ling/slamBook/code-source/FastFeatures/src/fastFeatures.cpp

CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ling/slamBook/code-source/FastFeatures/src/fastFeatures.cpp > CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.i

CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ling/slamBook/code-source/FastFeatures/src/fastFeatures.cpp -o CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.s

CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o.requires:

.PHONY : CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o.requires

CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o.provides: CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o.requires
	$(MAKE) -f CMakeFiles/fastFeatures.dir/build.make CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o.provides.build
.PHONY : CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o.provides

CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o.provides.build: CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o


# Object files for target fastFeatures
fastFeatures_OBJECTS = \
"CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o"

# External object files for target fastFeatures
fastFeatures_EXTERNAL_OBJECTS =

../bin/fastFeatures: CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o
../bin/fastFeatures: CMakeFiles/fastFeatures.dir/build.make
../bin/fastFeatures: /usr/local/lib/libopencv_stitching.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_superres.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_aruco.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_bgsegm.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_bioinspired.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_ccalib.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_dpm.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_freetype.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_fuzzy.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_hdf.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_img_hash.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_line_descriptor.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_optflow.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_reg.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_rgbd.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_saliency.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_stereo.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_structured_light.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_surface_matching.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_tracking.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_xfeatures2d.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_ximgproc.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_xobjdetect.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_shape.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_calib3d.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_features2d.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_highgui.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_videoio.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_viz.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_phase_unwrapping.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_video.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_datasets.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_flann.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_ml.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_plot.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_imgcodecs.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_objdetect.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_imgproc.so.3.3.1
../bin/fastFeatures: /usr/local/lib/libopencv_core.so.3.3.1
../bin/fastFeatures: CMakeFiles/fastFeatures.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ling/slamBook/code-source/FastFeatures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/fastFeatures"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fastFeatures.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fastFeatures.dir/build: ../bin/fastFeatures

.PHONY : CMakeFiles/fastFeatures.dir/build

CMakeFiles/fastFeatures.dir/requires: CMakeFiles/fastFeatures.dir/src/fastFeatures.cpp.o.requires

.PHONY : CMakeFiles/fastFeatures.dir/requires

CMakeFiles/fastFeatures.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fastFeatures.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fastFeatures.dir/clean

CMakeFiles/fastFeatures.dir/depend:
	cd /home/ling/slamBook/code-source/FastFeatures/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ling/slamBook/code-source/FastFeatures /home/ling/slamBook/code-source/FastFeatures /home/ling/slamBook/code-source/FastFeatures/build /home/ling/slamBook/code-source/FastFeatures/build /home/ling/slamBook/code-source/FastFeatures/build/CMakeFiles/fastFeatures.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fastFeatures.dir/depend

