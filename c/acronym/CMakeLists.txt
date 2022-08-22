cmake_minimum_required(VERSION 3.23)
project(acronym C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(acronym
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        acronym.c
        acronym.h
        test_acronym.c)
