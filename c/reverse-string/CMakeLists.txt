cmake_minimum_required(VERSION 3.25)
project(reverse_string C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(reverse_string
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        reverse_string.c
        reverse_string.h
        test_reverse_string.c)
