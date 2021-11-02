cmake_minimum_required(VERSION 3.20)
project(2D_House)

set(OpenGlLinkers -lglut -lGLU -lGL)

add_executable(2D_House main.cpp)

target_link_libraries(2D_House ${OpenGlLinkers})
