# Mario's marvellous lasagna

Welcome to Mario's marvellous lasagna on Exercism's Elm Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

Elm is a fully functional language, so there are no statements, just expressions, and functions are always a single expression.

This encourages small, simple functions and is generally a good thing, but sometimes functions are unavoidably more complex, and we need a way to ensure that these functions can be written elegantly.

This is where `let` expressions come in. They have two parts, a `let` section where you can create as many definitions as you need, and then an `in` section, which is a single expression that can use these definitions.

In computing terms, `let` creates a scope that is local to the expression in `in`.

The let expression is useful in a few situations:

- For simplifying expressions
- For naming the results of intermediate expressions
- Splitting an expression in to smaller bits if it is getting large

You can do most things inside a `let` expression, including destructuring (more details on this in later exercises), however the following are not allowed:

- Custom Types
- Type Alias'
- Name shadowing (you cannot redefine / reuse a name that is already in scope)

## Simplifying expressions

This expression defines adds the cube's of 3 numbers, but it is hard to read, and it would be easy for the calculation to be different for the different numbers.

```elm
(a * a * a) + (b * b * b) + (c * c * c)
```

We can define a `cube` function in a `let` expressions to make the calculation simpler, more expressive, and safer. This function could have a type annotation, but in idiomatic Elm code this is relatively rare.

```elm
let
  cube x = x * x * x
in
  cube a + cube b + cube c
```

## Naming the results of intermediate expressions

This code defines sideArea and topArea to make the calculation simpler and more expressive.

```elm
cylinderArea : Float -> Float -> Float
cylinderArea radius height =
    let
        sideArea = 2 * pi * radius * height
        topArea = pi * radius ^2
    in
        sideArea + 2 * topArea
```

## Splitting a large expression

This code creates an initial pattern for the [Game of Life](https://playgameoflife.com/) (a common programming example exercise).

It's not important to understand exactly how it works, but hopefully it is obvious that it would be very large if written as a single expression, without `let`.

```elm
beginWithPattern : Size -> Padding -> Pattern -> GameOfLife
beginWithPattern minimumSize padding pattern =
    let
        size = calculateSize minimumSize padding pattern

        center = Size.center size

        centeredPattern = Pattern.centerAt center pattern

        dimensions = { width = size, height = size }

        deadCells = Matrix.create dimensions Dead
    in
    GameOfLife (bringPatternToLife deadCells centeredPattern)
```

## Instructions

You have been given a new cooking book for your birthday, and you want to find out if the lasagna recipe in it is better than your current favourite cooking book. In this exercise you're going to write some code to help you cook a the lasagna from the new cooking book.

Your housemate is still busy at the office, and wants to know what time the lasagna will be ready, so that she can make sure she is back in time.

## 1. Work out what time the lasagna will be ready

Create a function to work out what time the lasagna will be ready. To make the code simple and expressive you should use a `let` expression.

Define the `expectedMinutesInOven` constant (in the `let` part of the `let` expression) to check how many minutes the lasagna should be in the oven. According to the cooking book, the expected oven time in minutes is 40:

```elm
expectedMinutesInOven
    --> 40
```

Define the `preparationTimeInMinutes` constant (in the `let` part of the `let` expression) that takes the number of layers you added to the lasagna as a parameter and returns how many minutes you spent preparing the lasagna, assuming each layer takes you 2 minutes to prepare.

```elm
preparationTimeInMinutes 3
    --> 6
```

Define the `remainingTimeInMinutes` function (in the `in` part of the `let` expression) that takes two parameters: the first parameter is the number of layers you added to the lasagna, and the second parameter is the number of minutes since you starting cooking. The function should return how many minutes are left until the lasagna is finished, which is the sum of the `preparationTimeInMinutes` and the `expectedMinutesInOven` minus the number of minutes since you starting cooking.

```elm
remainingTimeInMinutes 3 10
    --> 6 + 40 - 10 = 36
```

## Source

### Created by

- @ceddlyburge

### Contributed to by

- @mpizenberg