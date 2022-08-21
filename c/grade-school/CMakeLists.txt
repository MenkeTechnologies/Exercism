cmake_minimum_required(VERSION 3.23)
project(grade_school C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(grade_school
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        grade_school.c
        grade_school.h
        test_grade_school.c)
