cmake_minimum_required(VERSION 3.23)
project(phone_number C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(phone_number
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        phone_number.c
        phone_number.h
        test_phone_number.c)
