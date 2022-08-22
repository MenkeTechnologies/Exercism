cmake_minimum_required(VERSION 3.23)
project(nucleotide_count C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(nucleotide_count
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        nucleotide_count.c
        nucleotide_count.h
        test_nucleotide_count.c)
