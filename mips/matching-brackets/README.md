# Matching Brackets

Welcome to Matching Brackets on Exercism's MIPS Assembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Instructions

Given a string containing brackets `[]`, braces `{}`, parentheses `()`, or any combination thereof, verify that any and all pairs are matched and nested correctly.
The string may also contain other characters, which for the purposes of this exercise should be ignored.

## Registers

| Register | Usage     | Type    | Description                                               |
| -------- | --------- | ------- | --------------------------------------------------------- |
| `$a0`    | input     | address | null-terminated input string                              |
| `$v0`    | output    | boolean | input has matching brackets (`0` = `false`, `1` = `true`) |
| `$t0-9`  | temporary | any     | used for temporary storage                                |

## Source

### Created by

- @keiravillekode

### Based on

Ginna Baker