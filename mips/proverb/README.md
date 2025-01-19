# Proverb

Welcome to Proverb on Exercism's MIPS Assembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Instructions

For want of a horseshoe nail, a kingdom was lost, or so the saying goes.

Given a list of inputs, generate the relevant proverb.
For example, given the list `["nail", "shoe", "horse", "rider", "message", "battle", "kingdom"]`, you will output the full text of this proverbial rhyme:

```text
For want of a nail the shoe was lost.
For want of a shoe the horse was lost.
For want of a horse the rider was lost.
For want of a rider the message was lost.
For want of a message the battle was lost.
For want of a battle the kingdom was lost.
And all for the want of a nail.
```

Note that the list of inputs may vary; your solution should be able to handle lists of arbitrary length and content.
No line of the output text should be a static, unchanging string; all should vary according to the input given.

## Input format

Each list of inputs is represented as a null-terminated string, with a newline character at the end of each input.

An example would be `"nail\nshoe\nhorse\nrider\nmessage\nbattle\nkingdom\n"`

## Registers

| Register | Usage        | Type    | Description                                                    |
| -------- | ------------ | ------- | -------------------------------------------------------------- |
| `$a0`    | input        | address | null-terminated input string with newline after each input     |
| `$a1`    | input/output | address | null-terminated output string                                  |
| `$t0-9`  | temporary    | any     | for temporary storage                                          |

## Source

### Created by

- @keiravillekode

### Based on

Wikipedia - https://en.wikipedia.org/wiki/For_Want_of_a_Nail