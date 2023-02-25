cmake_minimum_required(VERSION 3.24)
project(sublist C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(sublist
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        sublist.c
        sublist.h
        test_sublist.c)
