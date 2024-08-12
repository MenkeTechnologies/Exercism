# Chess Game

Welcome to Chess Game on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

[Ranges][range] represent an interval between two values.
The most common types that support ranges are `Int`, `Char`, and `String`.
They can be used for many things like quickly creating a collection, slicing strings, checking if a value is in a range, and iteration.
They are created using the range operator `..` or `...` (inclusive and exclusive, respectively).

```crystal
1..5  # A range containing 1..5
1...5 # A range containing 1...5
```

The reason for having two range operators is to allow to create ranges that are inclusive or exclusive of the end value, which can be useful when for example working with indexes that are zero based.

Ranges can also be created using the `Range` initializer.

```crystal
Range.new(1, 5) # A range containing 1, 2, 3, 4, 5
```

~~~~exercism/note
When creating a range in Crystal using the range operators `..` or `...`, and wanting to call a method on the range, you need to wrap the range in parentheses.
This is because the otherwise will the method be called on the 2nd argument of the range operator.

```crystal
(1..5).size # => 5
1..5.size # => Error: undefined method 'size' for Int32
```
~~~~

## Getting substrings

When wanting to slice a string, you can use the range operator to get a sub-string.
That is, by creating a range with the start and end index of the sub-string.

```crystal
"Hello World"[0..4] # => "Hello"
"Hello World"[6..10] # => "World"
```

You can also use negative indexes to get the substring from the end of the string.

```crystal
"Hello World"[-5..-1] # => "World"
"Hello World"[6..-4] # => "Wo"
```

## Range methods

Ranges do have a set of methods that can be used to work with them.
For example, these methods can be used to get the sum of all the values in the range or check if the range includes a value.

| Method                  | Description                                                             | Example                         |
| ----------------------- | ----------------------------------------------------------------------- | ------------------------------- |
| [`sum`][sum]            | Returns the sum of all the values in the range                          | `(1..5).sum # => 15`            |
| [`size`][size]          | Returns the size of the range                                           | `(1..5).size # => 5`            |
| [`includes?`][indludes] | Returns `true` if the range includes the given value, otherwise `false` | `(1..5).includes?(3) # => true` |

## Endless & Beginningless ranges

A range can be endless and beginless.
The endless or beginless range has their start or end value being `nil`, but when defining the range the `nil` can be omitted.

Using beginless and endless ranges is useful when you want to, for example, slice a string from the beginning or to the end.

```crystal
"Hello World"[0..] # => "Hello World"
"Hello World"[4..] # => "o World"
"Hello World"[..5] # => "Hello"
```

~~~~exercism/caution
If not used on a collection, the endless range can cause an endless sequence, if not used with caution.
~~~~

## Char ranges

Chars can be used in ranges and allow you to get an interval of chars between two chars.
This can be handy when you want to, for example, get the alphabet.

```crystal
'a'..'z' # A range containing ['a', 'b', 'c', ..., 'z']
```

## String ranges

Strings can also be used in ranges and allow one to get an interval of strings between two strings.
But its behavior is a bit different than with `Char` when using multiple characters in a string range.
Its behavior can become confusing when doing more complex string ranges, so use it with caution.

```crystal
("aa".."az") # A range containing ["aa", "ab", "ac", ..., "az"]
```

[range]: https://crystal-lang.org/api/latest/Range.html
[sum]: https://crystal-lang.org/api/latest/Range.html#sum%28initial%29-instance-method
[size]: https://crystal-lang.org/api/latest/Range.html#size-instance-method
[indludes]: https://crystal-lang.org/api/latest/Range.html#includes%3F%28value%29%3ABool-instance-method

## Instructions

As a chess enthusiast, you would like to write your own version of the game.
Yes, there maybe plenty of implementations of chess available online already, but yours will be unique!

You start with implementing a basic movement system for the pieces.

The chess game will be played on a board that is 8 squares wide and 8 squares long.
The squares are identified by a letter and a number.

## 1. Define rank & file range

The game will have to store the ranks of the board.
The ranks are the rows of the board, and are numbered from 1 to 8.

The game will also have to store the files of the board.
The files are the columns of the board and are identified by the letters A to H.

Define the `Chess::RANKS` and `Chess::FILES` constants that store the range of ranks and files respectively.

```crystal
Chess::RANKS
# => 1..8

Chess::FILES
# => 'A'..'H'
```

## 2. Check if square is valid

The game will have to check if a square is valid.
A square is valid if the rank and file are within the ranges of the ranks and files.

Define the `Chess.valid_square?` method that takes the arguments `rank` that holds an int of the rank and `file` that holds a char of the file.
The method should return `true` if the rank and file are within the range of ranks and files, and return `false` otherwise.

```crystal
Chess.valid_square?(1, 'A')
# => true
```

## 3. Get player's nickname

The game will have to get the nickname of the player.
The nickname is the first 2 characters of the player's first name and the last 2 characters of the player's last name.
The nickname should be capitalized.

Define the `Chess.nickname` method that takes the arguments `first_name` that holds a string of the player's first name and `last_name` that holds a string of the player's last name.
The method should return the nickname of the player as capitalized string.

```crystal
Chess.nickname("John", "Doe")
# => "JOOE"
```

## 4. Create move message

The game will have to create a message for a move to say which player moved to which square.
The message should use the player's nickname and the square they moved to.
The game also has to determine if the move is valid by checking if the file and rank of the square are within the ranges of the files and ranks.

If the move is valid, the message should be: `"{nickname} moved to {square}"`
If the move is invalid, the message should be: `"{nickname} attempted to move to {square}, but that is not a valid square"`

Define the `Chess.move_message` method that takes the arguments `first_name` that holds a string of the player's first_name, `last_name` that holds a string of the player's last_name, and `square` that holds a string of the square the player moved to.
The method should return the message for the move as a string.

```crystal
Chess.move_message("John", "Doe", "A1")
# => "JOOE moved to A1"
```

## Source

### Created by

- @meatball133

### Contributed to by

- @ryanplusplus