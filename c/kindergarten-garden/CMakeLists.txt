cmake_minimum_required(VERSION 3.27)
project(kindergarten_garden C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(kindergarten_garden
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        kindergarten_garden.c
        kindergarten_garden.h
        test_kindergarten_garden.c)
