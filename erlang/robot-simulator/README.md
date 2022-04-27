# Robot Simulator

Welcome to Robot Simulator on Exercism's Erlang Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Write a robot simulator.

A robot factory's test facility needs a program to verify robot movements.

The robots have three possible movements:

- turn right
- turn left
- advance

Robots are placed on a hypothetical infinite grid, facing a particular
direction (north, east, south, or west) at a set of {x,y} coordinates,
e.g., {3,8}, with coordinates increasing to the north and east.

The robot then receives a number of instructions, at which point the
testing facility verifies the robot's new position, and in which
direction it is pointing.

- The letter-string "RAALAL" means:
  - Turn right
  - Advance twice
  - Turn left
  - Advance once
  - Turn left yet again
- Say a robot starts at {7, 3} facing north. Then running this stream
  of instructions should leave it at {9, 4} facing west.

This exercise does require some kind of global state for your
robot. In erlang this can be done in various ways (starting with most
idiomatic one):

1. Use some `gen_*` from OTP
2. Roll your own process and receive messages in a loop and pass the
   state as parameter around.
3. Roll your own process and use the process dictionary.

## Source

### Contributed to by

- @ErikSchierboom
- @iHiD
- @JordanAdams
- @juhlig
- @kytrinyx
- @NobbZ
- @tmcgilchrist
- @xymbol

### Based on

Inspired by an interview question at a famous company.