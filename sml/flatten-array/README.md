# Flatten Array

Welcome to Flatten Array on Exercism's Standard ML Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Introduction

A shipment of emergency supplies has arrived, but there's a problem.
To protect from damage, the items — flashlights, first-aid kits, blankets — are packed inside boxes, and some of those boxes are nested several layers deep inside other boxes!

To be prepared for an emergency, everything must be easily accessible in one box.
Can you unpack all the supplies and place them into a single box, so they're ready when needed most?

## Instructions

Take a nested array of any depth and return a fully flattened array.

Note that some language tracks may include null-like values in the input array, and the way these values are represented varies by track.
Such values should be excluded from the flattened array.

Additionally, the input may be of a different data type and contain different types, depending on the track.

Check the test suite for details.

## Example

input: `[1, [2, 6, null], [[null, [4]], 5]]`

output: `[1, 2, 6, 4, 5]`

You can think of this data structure as a [`Rose Tree`](https://en.wikipedia.org/wiki/Rose_tree). You are given a data type `'a tree` that represents this data structure.

**Notes**
- For this exercise `Empty` represents `null`
- The nested list is represented by `List [...]`.
- The input example is represented by `List [Elem 1, List [Elem 2, Elem 3, Empty, Elem 4], List [Empty], Elem 5]`

## Source

### Contributed to by

- @iHiD
- @kytrinyx
- @mcmillhj-wta
- @sjwarner-bp
- @snahor
- @sshine

### Based on

Interview Question - https://reference.wolfram.com/language/ref/Flatten.html