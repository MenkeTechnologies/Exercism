cmake_minimum_required(VERSION 3.23)
project(triangle C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(triangle
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        test_triangle.c
        triangle.c
        triangle.h)
