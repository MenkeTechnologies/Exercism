cmake_minimum_required(VERSION 3.23)
project(clock C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(clock
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        clock.c
        clock.h
        test_clock.c)
