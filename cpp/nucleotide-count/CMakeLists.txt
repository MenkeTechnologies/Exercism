cmake_minimum_required(VERSION 3.26)
project(nucleotide_count)

set(CMAKE_CXX_STANDARD 17)

add_executable(nucleotide_count nucleotide_count.h nucleotide_count_test.cpp test/catch.hpp test/tests-main.cpp
        nucleotide_count.cpp)
