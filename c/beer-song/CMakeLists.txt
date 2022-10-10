cmake_minimum_required(VERSION 3.23)
project(beer_song C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(beer_song
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        beer_song.c
        beer_song.h
        test_beer_song.c)
