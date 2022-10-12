cmake_minimum_required(VERSION 3.23)
project(robot_simulator C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(robot_simulator
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        robot_simulator.c
        robot_simulator.h
        test_robot_simulator.c)
