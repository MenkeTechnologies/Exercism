# Triangle

Welcome to Triangle on Exercism's PowerShell Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Determine if a triangle is equilateral, isosceles, or scalene.

An _equilateral_ triangle has all three sides the same length.

An _isosceles_ triangle has at least two sides the same length.
(It is sometimes specified as having exactly two sides the same length, but for the purposes of this exercise we'll say at least two.)

A _scalene_ triangle has all sides of different lengths.

## Note

For a shape to be a triangle at all, all sides have to be of length > 0, and the sum of the lengths of any two sides must be greater than or equal to the length of the third side.

In equations:

Let `a`, `b`, and `c` be sides of the triangle.
Then all three of the following expressions must be true:

```text
a + b ≥ c
b + c ≥ a
a + c ≥ b
```

See [Triangle Inequality][triangle-inequality]

[triangle-inequality]: https://en.wikipedia.org/wiki/Triangle_inequality

The enum statement allows you to create a strongly typed set of labels.
You can use that enumeration in the code without having to parse or check for spelling errors.

Enumerations are internally represented as integers with a starting value of zero.
By default, PowerShell assigns the first label in the list the value zero, and assigns the remaining labels with consecutive integers.

Example:
```pwsh
Enum Fruits {
    APPLE       #default internal value 0
    ORANGE      #default internal value 1
    MANGO       #default internal value 2
}

$myFavFruit = [Fruits]::APPLE
Write-host $myFavFruit => APPLE
``````

To know more about Enum in powershell please check out [Enum module.](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_enum)

## Source

### Created by

- @glaxxie

### Based on

The Ruby Koans triangle project, parts 1 & 2 - https://web.archive.org/web/20220831105330/http://rubykoans.com