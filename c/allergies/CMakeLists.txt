cmake_minimum_required(VERSION 3.21)
project(allergies C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(allergies
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        allergies.c
        allergies.h
        test_allergies.c)
