cmake_minimum_required(VERSION 3.22)
project(space_age C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(space_age
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        space_age.c
        space_age.h
        test_space_age.c)
