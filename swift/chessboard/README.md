# ChessBoard

Welcome to ChessBoard on Exercism's Swift Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

[Ranges][range] represent an interval between two values.
The most common types that support ranges are `Int`, `String`, and `Date`.
They can be used for many things, such as quickly creating a collection, slicing an array, checking if a value is in a range, and iteration.
They are created using the range operator `...` or `..<` (inclusive and exclusive, respectively).

```swift
1...5 // A range containing 1, 2, 3, 4, 5
1..<5 // A range containing 1, 2, 3, 4
```

The reason for having two range operators is to create ranges that are inclusive or exclusive of the end value, which can be useful when, for example, working with zero-based indexes.

~~~~exercism/note
When creating a range in Swift using the range operators `...` or `..<`, and wanting to call a method on the range, you need to wrap the range in parentheses.
This is because the otherwise will the method be called on the 2nd argument of the range operator.

```swift
(1...5).contains(3) // Returns true
1...5.contains(3) // => Error: value of type 'Int' has no member 'contains'
```
~~~~

## Convert a range to an array

To convert a range to an array, you can use the `Array` initializer.
This can be useful when you want to create a collection of values, without having to write them out.

```swift
let range = 1...5
let array = Array(range)
// Returns [1, 2, 3, 4, 5]
```

## Slice an array

Ranges can be used to slice an array.

```swift
let array = [1, 2, 3, 4, 5]
// Returns [1, 2, 3, 4, 5]
let slice = array[1...3]
// Returns [2, 3, 4]
```

## Range methods

Ranges have a set of methods that can be used to work with them.
For example, these methods can be used to get the sum of all the values in the range or check if the range includes a value.

| Method                  | Description                                                             | Example                               |
| ----------------------- | ----------------------------------------------------------------------- | ------------------------------------- |
| `count`                 | Returns the size of the range                                           | `(1...5).count // returns 5`          |
| [`contains`][contains]  | Returns `true` if the range includes the given value, otherwise `false` | `(1...5).contains(3) // Returns true` |

## Endless and beginless ranges

A range can be endless and beginless.

Using endless and beginless ranges is useful when you want to, for example, slice an array from the beginning or to the end.

~~~~exercism/caution
If not used on a collection, the endless range can cause an endless sequence, if not used with caution.
~~~~

## String ranges

String can be used in ranges and allow you to get an interval of Strings between two Strings.
For example, this can be handy when you want to get the alphabet.

```swift
"a"..."z" // A range containing ["a", "b", "c", ..., "z"]
```

[range]: https://developer.apple.com/documentation/swift/range
[contains]: https://developer.apple.com/documentation/swift/range/contains(_:)

## Instructions

As a chess enthusiast, you want to write your own version of the game.
Yes, there may be plenty of implementations of chess available online already, but yours will be unique!

You start with implementing a chess board.

The chess game will be played on an eight-square wide and eight-square long board.
The squares are identified by a letter and a number.

## 1. Define rank & file range

The game will have to store the ranks of the board.
The ranks are the rows of the board, and are numbered from 1 to 8.

The game will also have to store the files on the board.
The files are the board's columns and are identified by the letters A to H.

Define the `ranks` and `files` constants that store the range of ranks and files respectively.

```swift
ranks
// Returns 1..8

files
// Returns "A".."H"
```

## 2. Check if square is valid

The game will have to check if a square is valid.
A square is valid if the rank and file are within the ranges of the ranks and files.

Define the `isValidSquare(rank:file:)` method that takes the arguments `rank` that holds an `Int` of the rank and `file` that holds a `String` of the file.
The method should return `true` if the rank and file are within the range of ranks and files, and return `false` otherwise.

```swift
isValidSquare(rank: 1, file: "A")
// Returns true
```

## 3. Get row

The game will store all the squares of the board in a single dimensional array.
The squares are formed as a string of the rank and file, e.g. "1A", "8B", "4G", etc.
To get the row of a square, the game will have to calculate the index of the first square of the row.

Define the `getRow(rank:)` method that takes the argument `rank` that holds an `Int` of the rank.
The method should return an array of strings that represent the squares of the row.

```swift
let board = ["1A", "1B", "1C", "1D", "1E", "1F", "1G", "1H", "2A", ..., "8H"]
getRow(board, rank: 1)
// Returns ["1A", "1B", "1C", "1D", "1E", "1F", "1G", "1H"]
```

## Source

### Created by

- @meatball133