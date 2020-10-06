cmake_minimum_required(VERSION 3.5)

# set the project name
project(prueba1)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_library(MathFunctions mysqrt.cpp)

add_subdirectory(${PROJECT_SOURCE_DIR}/lib/fcontrol/)
INCLUDE_DIRECTORIES(${SUBDIR_INCLUDE_DIRECTORIES})

# add the executable
add_executable(prueba1 main.cpp)

target_link_libraries(prueba1 MathFunctions ${SUBDIR_LINK_NAMES})

