cmake_minimum_required(VERSION 3.22.0)
project(gl_learn)

set(CMAKE_CXX_STANDARD 17)

set(
    INCLUDES
)

set(
    GLAD_SOURCE
    libs/glad/src/glad.c
)

add_executable(${PROJECT_NAME} src/main.cpp ${INCLUDES} ${GLAD_SOURCE})

target_include_directories(${PROJECT_NAME} PRIVATE libs/glad/include)

# target_include_directories(${PROJECT_NAME} PRIVATE util)
target_include_directories(${PROJECT_NAME} PRIVATE src)

set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

add_subdirectory(libs/glfw)
target_link_libraries(${PROJECT_NAME} glfw)

add_subdirectory(libs/glm)
target_link_libraries(${PROJECT_NAME} glm::glm)


