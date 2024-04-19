cmake_minimum_required(VERSION 3.28)
project(dnd_character C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(dnd_character
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        dnd_character.c
        dnd_character.h
        test_dnd_character.c)
