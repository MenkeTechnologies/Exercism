cmake_minimum_required(VERSION 3.24)
project(series C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(series
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        series.c
        series.h
        test_series.c)
