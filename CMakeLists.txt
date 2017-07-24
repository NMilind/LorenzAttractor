cmake_minimum_required(VERSION 3.8)

project(LorenzAttractor)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -framework OpenGL") # compiler version and compiler flags.

set(SOURCE_FILES main.cpp) # which files should be compiled

add_executable(LorenzAttractor ${SOURCE_FILES})

INCLUDE_DIRECTORIES(/usr/local/Cellar/allegro/5.2.2/include)
LINK_DIRECTORIES(/usr/local/Cellar/allegro/5.2.2/lib)

file(GLOB LIBRARIES "/usr/local/Cellar/allegro/5.2.2/lib/*.dylib")
message("LIBRARIES + ${LIBRARIES}")
