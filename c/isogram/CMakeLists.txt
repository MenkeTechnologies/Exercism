cmake_minimum_required(VERSION 3.21)
project(isogram C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(isogram
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        isogram.c
        isogram.h
        test_isogram.c)
