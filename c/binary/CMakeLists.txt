cmake_minimum_required(VERSION 3.23)
project(binary C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(binary
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        binary.c
        binary.h
        test_binary.c)
