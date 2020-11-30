cmake_minimum_required(VERSION 3.5)

# set the project name
project(prueba1)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_library(MathFunctions mysqrt.cpp)


# add the control libraries
add_subdirectory(${PROJECT_SOURCE_DIR}/lib/fcontrol/)
INCLUDE_DIRECTORIES(${SUBDIR_INCLUDE_DIRECTORIES})


# add the CiA402Device
add_subdirectory(${PROJECT_SOURCE_DIR}/lib/CiA402Device/)
INCLUDE_DIRECTORIES(${SUBDIR_INCLUDE_DIRECTORIES})

# add the executable
add_executable(prueba1 main.cpp)
add_executable(prueba2 prueba2.cpp)

target_link_libraries(prueba1 ${SUBDIR_LINK_NAMES})
target_link_libraries(prueba2 ${SUBDIR_LINK_NAMES})
