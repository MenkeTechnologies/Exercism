cmake_minimum_required(VERSION 3.24)
project(largest_series_product C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(largest_series_product
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        largest_series_product.c
        largest_series_product.h
        test_largest_series_product.c)
