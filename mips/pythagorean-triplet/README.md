# Pythagorean Triplet

Welcome to Pythagorean Triplet on Exercism's MIPS Assembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Instructions

A Pythagorean triplet is a set of three natural numbers, {a, b, c}, for which,

```text
a² + b² = c²
```

and such that,

```text
a < b < c
```

For example,

```text
3² + 4² = 5².
```

Given an input integer N, find all Pythagorean triplets for which `a + b + c = N`.

For example, with N = 1000, there is exactly one Pythagorean triplet for which `a + b + c = 1000`: `{200, 375, 425}`.

## Registers

| Register | Usage        | Type    | Description                  |
| -------- | ------------ | ------- | ---------------------------- |
| `$a0`    | input        | integer | N, sum of sides of triangle  |
| `$a1`    | input/output | address | a values                     |
| `$a2`    | input/output | address | b values                     |
| `$a3`    | input/output | address | c values                     |
| `$v0`    | output       | integer | number of triplets           |
| `$t0-9`  | temporary    | any     | for temporary storage        |

## Source

### Created by

- @keiravillekode

### Based on

Problem 9 at Project Euler - https://projecteuler.net/problem=9