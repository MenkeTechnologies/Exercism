# Matching Brackets

Welcome to Matching Brackets on Exercism's MIPS Assembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

You're given the opportunity to write software for the Bracketeer™, an ancient but powerful mainframe.
The software that runs on it is written in a proprietary language.
Much of its syntax is familiar, but you notice _lots_ of brackets, braces and parentheses.
Despite the Bracketeer™ being powerful, it lacks flexibility.
If the source code has any unbalanced brackets, braces or parentheses, the Bracketeer™ crashes and must be rebooted.
To avoid such a scenario, you start writing code that can verify that brackets, braces, and parentheses are balanced before attempting to run it on the Bracketeer™.

## Instructions

Given a string containing brackets `[]`, braces `{}`, parentheses `()`, or any combination thereof, verify that any and all pairs are matched and nested correctly.
Any other characters should be ignored.
For example, `"{what is (42)}?"` is balanced and `"[text}"` is not.

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