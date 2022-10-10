cmake_minimum_required(VERSION 3.23)
project(square_root C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(square_root
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        square_root.c
        square_root.h
        test_square_root.c)
