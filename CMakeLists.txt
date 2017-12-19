# cmake needs this line
cmake_minimum_required(VERSION 2.8)

# Define project name
project(FASTFEATURES)

set(EXECUTABLE_OUTPUT_PATH  ${CMAKE_CURRENT_LIST_DIR}/bin)
set(LIBRARY_OUTPUT_PATH     ${CMAKE_CURRENT_LIST_DIR}/lib)



# Find OpenCV, you may need to set OpenCV_DIR variable
# to the absolute path to the directory containing OpenCVConfig.cmake file
# via the command line or GUI
find_package(OpenCV REQUIRED)

# If the package has been found, several variables will
# be set, you can find the full list with descriptions
# in the OpenCVConfig.cmake file.
# Print some message showing some of them
message(STATUS "OpenCV library status:")
message(STATUS "    version: ${OpenCV_VERSION}")
message(STATUS "    libraries: ${OpenCV_LIBS}")
message(STATUS "    include path: ${OpenCV_INCLUDE_DIRS}")

# Add OpenCV headers location to your include paths
include_directories(
    ${CMAKE_CURRENT_LIST_DIR}/include
    ${OpenCV_INCLUDE_DIRS})

link_directories( 
    ${CMAKE_CURRENT_LIST_DIR}/lib
    ) 
AUX_SOURCE_DIRECTORY(${CMAKE_CURRENT_LIST_DIR}/src SOURCES_FILE )

foreach(eachSourceFile ${SOURCES_FILE})
    message(${eachSourceFile})
    STRING(REGEX REPLACE ".+/(.+)\\..*" "\\1" filename ${eachSourceFile})
    # message(${filename0})
    
    message(${filename})
    add_executable(${filename} ${eachSourceFile})
    target_link_libraries( ${filename} ${OpenCV_LIBS} )
endforeach(eachSourceFile $(SOURCES_FILE))

# Declare the executable target built from your sources
# add_executable(main main.cpp)

# Link your application with OpenCV libraries
# target_link_libraries(main ${OpenCV_LIBS})