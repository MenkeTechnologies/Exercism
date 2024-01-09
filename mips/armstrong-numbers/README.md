# Armstrong Numbers

Welcome to Armstrong Numbers on Exercism's MIPS Assembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Instructions

An [Armstrong number][armstrong-number] is a number that is the sum of its own digits each raised to the power of the number of digits.

For example:

- 9 is an Armstrong number, because `9 = 9^1 = 9`
- 10 is _not_ an Armstrong number, because `10 != 1^2 + 0^2 = 1`
- 153 is an Armstrong number, because: `153 = 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153`
- 154 is _not_ an Armstrong number, because: `154 != 1^3 + 5^3 + 4^3 = 1 + 125 + 64 = 190`

Write some code to determine whether a number is an Armstrong number.

[armstrong-number]: https://en.wikipedia.org/wiki/Narcissistic_number

## Registers

| Register | Usage     | Type    | Description                                       |
| -------- | --------- | ------- | ------------------------------------------------- |
| `$a0`    | input     | integer | number                                            |
| `$v0`    | output    | boolean | is armstrong number (`0` = `false`, `1` = `true`) |
| `$t0-9`  | temporary | any     | used for temporary storage                        |

## Source

### Created by

- @keiravillekode

### Based on

Wikipedia - https://en.wikipedia.org/wiki/Narcissistic_number