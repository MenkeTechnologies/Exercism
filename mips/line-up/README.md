# Line up

Welcome to Line up on Exercism's MIPS Assembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

Your friend Yaʻqūb works the counter at a deli in town, slicing, weighing, and wrapping orders for a line of hungry customers that gets longer every day.
Waiting customers are starting to lose track of who is next, so he wants numbered tickets they can use to track the order in which they arrive.

To make the customers feel special, he does not want the ticket to have only a number on it.
They shall get a proper English sentence with their name and number on it.

## Instructions

Given a name and a number, your task is to produce a sentence using that name and that number as an [ordinal numeral][ordinal-numeral].
Yaʻqūb expects to use numbers from 1 up to 999.

Rules:

- Numbers ending in 1 (except for 11) → `"st"`
- Numbers ending in 2 (except for 12) → `"nd"`
- Numbers ending in 3 (except for 13) → `"rd"`
- All other numbers → `"th"`

Examples:

- `"Mary", 1` → `"Mary, you are the 1st customer we serve today. Thank you!"`
- `"John", 12` → `"John, you are the 12th customer we serve today. Thank you!"`
- `"Dahir", 162` → `"Dahir, you are the 162nd customer we serve today. Thank you!"`

[ordinal-numeral]: https://en.wikipedia.org/wiki/Ordinal_numeral

## Registers

| Register | Usage        | Type    | Description                   |
| -------- | ------------ | ------- | ----------------------------- |
| `$a0`    | input        | address | null-terminated name string   |
| `$a1`    | input        | integer | number                        |
| `$a2`    | input/output | address | null-terminated result string |
| `$t0-9`  | temporary    | any     | for temporary storage         |

## Source

### Created by

- @keiravillekode

### Based on

mk-mxp, based on previous work from Exercism contributors codedge and neenjaw - https://forum.exercism.org/t/new-exercise-ordinal-numbers/19147