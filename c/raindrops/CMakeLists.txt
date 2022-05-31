cmake_minimum_required(VERSION 3.22)
project(raindrops C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(raindrops
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        raindrops.c
        raindrops.h
        test_raindrops.c)
