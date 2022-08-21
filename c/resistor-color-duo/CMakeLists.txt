cmake_minimum_required(VERSION 3.23)
project(resistor_color_duo C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(resistor_color_duo
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        resistor_color_duo.c
        resistor_color_duo.h
        test_resistor_color_duo.c)
