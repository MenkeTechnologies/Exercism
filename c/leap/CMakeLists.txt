cmake_minimum_required(VERSION 3.22)
project(leap C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(leap
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        leap.c
        leap.h
        test_leap.c)
