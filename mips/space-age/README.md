# Space Age

Welcome to Space Age on Exercism's MIPS Assembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

The year is 2525 and you've just embarked on a journey to visit all planets in the Solar System (Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus and Neptune).
The first stop is Mercury, where customs require you to fill out a form (bureaucracy is apparently _not_ Earth-specific).
As you hand over the form to the customs officer, they scrutinize it and frown.
"Do you _really_ expect me to believe you're just 50 years old?
You must be closer to 200 years old!"

Amused, you wait for the customs officer to start laughing, but they appear to be dead serious.
You realize that you've entered your age in _Earth years_, but the officer expected it in _Mercury years_!
As Mercury's orbital period around the sun is significantly shorter than Earth, you're actually a lot older in Mercury years.
After some quick calculations, you're able to provide your age in Mercury Years.
The customs officer smiles, satisfied, and waves you through.
You make a mental note to pre-calculate your planet-specific age _before_ future customs checks, to avoid such mix-ups.

~~~~exercism/note
If you're wondering why Pluto didn't make the cut, go watch [this YouTube video][pluto-video].

[pluto-video]: https://www.youtube.com/watch?v=Z_2gbGXzFbs
~~~~

## Instructions

Given an age in seconds, calculate how old someone would be on a planet in our Solar System.

One Earth year equals 365.25 Earth days, or 31,557,600 seconds.
If you were told someone was 1,000,000,000 seconds old, their age would be 31.69 Earth-years.

For the other planets, you have to account for their orbital period in Earth Years:

| Planet  | Orbital period in Earth Years |
| ------- | ----------------------------- |
| Mercury | 0.2408467                     |
| Venus   | 0.61519726                    |
| Earth   | 1.0                           |
| Mars    | 1.8808158                     |
| Jupiter | 11.862615                     |
| Saturn  | 29.447498                     |
| Uranus  | 84.016846                     |
| Neptune | 164.79132                     |

~~~~exercism/note
The actual length of one complete orbit of the Earth around the sun is closer to 365.256 days (1 sidereal year).
The Gregorian calendar has, on average, 365.2425 days.
While not entirely accurate, 365.25 is the value used in this exercise.
See [Year on Wikipedia][year] for more ways to measure a year.

[year]: https://en.wikipedia.org/wiki/Year#Summary
~~~~

## Output format

Output the age in hundredths of a year.

For example, 100 × 1,000,000,000 ÷ 31,557,600 ≈ 3,169, so someone 1,000,000,000 seconds old is `3169` hundredths of an Earth-year old.

## Registers

| Register | Usage     | Type    | Description                   |
| -------- | --------- | ------- | ----------------------------- |
| `$a0`    | input     | integer | planet (`0` = Mercury, `1` = Venus, `2` = Earth, `3` = Mars, `4` = Jupiter, `5` = Saturn, `6` = Uranus, `7` = Neptune) |
| `$a1`    | input     | integer | seconds                       |
| `$v0`    | output    | integer | age in hundredths of a year   |
| `$t0-9`  | temporary | any     | used for temporary storage    |

## Source

### Created by

- @keiravillekode

### Based on

Partially inspired by Chapter 1 in Chris Pine's online Learn to Program tutorial. - https://pine.fm/LearnToProgram/?Chapter=01