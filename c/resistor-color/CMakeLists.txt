cmake_minimum_required(VERSION 3.21)
project(resistor_color C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(resistor_color
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        resistor_color.c
        resistor_color.h
        test_resistor_color.c)
