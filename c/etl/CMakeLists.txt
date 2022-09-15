cmake_minimum_required(VERSION 3.23)
project(etl C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(etl
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        etl.c
        etl.h
        test_etl.c)
