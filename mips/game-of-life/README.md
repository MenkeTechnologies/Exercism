# Conway's Game of Life

Welcome to Conway's Game of Life on Exercism's MIPS Assembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

[Conway's Game of Life][game-of-life] is a fascinating cellular automaton created by the British mathematician John Horton Conway in 1970.

The game consists of a two-dimensional grid of cells that can either be "alive" or "dead."

After each generation, the cells interact with their eight neighbors via a set of rules, which define the new generation.

[game-of-life]: https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life

## Instructions

After each generation, the cells interact with their eight neighbors, which are cells adjacent horizontally, vertically, or diagonally.

The following rules are applied to each cell:

- Any live cell with two or three live neighbors lives on.
- Any dead cell with exactly three live neighbors becomes a live cell.
- All other cells die or stay dead.

Given a matrix of 1s and 0s (corresponding to live and dead cells), apply the rules to each cell, and return the next generation.

Each row of the grid is represented as a word.

For example,

```
    0 1 0
    1 0 0
    1 1 0
```

is represented as

```
0x2
0x4
0x6
```

The grid has at most 32 columns.

## Registers

| Register | Usage        | Type    | Description                 |
| -------- | ------------ | ------- | --------------------------- |
| `$a0`    | input        | integer | number of rows              |
| `$a1`    | input        | integer | number of columns           |
| `$a2`    | input        | address | grid for current generation |
| `$a3`    | input/output | address | grid for next generation    |
| `$t0-9`  | temporary    | any     | used for temporary storage  |

## Source

### Created by

- @keiravillekode

### Based on

Wikipedia - https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life