# Blackjack

Welcome to Blackjack on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

[`case`][case] (often referred to as switch in other languages) is a form of control expression like if-else.
`case` allows for chaining of multiple if-else-if statements and can be more readable and also allows for powerful constructs.

A `case` is defined by the keyword `case` followed by an optional expression.
Then for each case, the keyword `when` is used followed by an expression which is compared to the case expression.
The `when` keyword should not be indented from the `case` keyword.
After the `when` keyword is the code that should be executed if the case expression matches the when expression.
Case allows for an optional `else` statement which is executed if no other case matches.

The case expression is evaluated and then compared to each when expression.
The expression is compared using the [case subsumption operator (`===`)][case-subsumption].

```Crystal
case 1
when 1
  puts "One"
when 2
  puts "Two"
else
  puts "Other"
end
# => One

# This is the same as:
tmp = 1
if 1 === tmp
  puts "One"
elsif 2 === tmp
  puts "Two"
else
  puts "Other"
end
```

## Case subsumption operator (`===`)

The case subsumption operator (`===`) is a bit different from the equality operator (`==`).
The operator checks if the right side is a member of the set described by the left side.
This means that it does matter where each operand is placed.
How this works depends on the type of the left side, for example a `Range` would check if the right side is in the range or a `Object` would check if the right side is an instance of the `Object`.

```Crystal
(1..3) == 1  # => false
(1..3) === 1 # => true

String == "foo"  # => false
String === "foo" # => true
```

## Case with multiple expressions

Cases allow for matching multiple expressions in a single case with each possible value separated by a comma.
It will execute the code if any of the expressions match.
This can be useful when you want a single case to have multiple possible values.

```Crystal
case 1
when 1, 2
  puts "One or two"
else
  puts "Other"
end
```

## Cases with ranges

Cases can also check if a value is in a range.
This is done by having a range as the when expression.

```Crystal
case var
when 1..3
  puts "One to three"
else
  puts "Other"
end
```

## Cases with no case expression

When there is no need for a case expression, it is possible to omit it.
Doing this will make it so that each case expression is evaluated for truthiness.
And makes them behave like if-else-if statements.

```Crystal
case
when 1 == 1
  puts "One is equal to one"
when 1 > 2
  puts "One is greater than two"
else
  puts "Other"
end
```

## Single line when

Crystal allows for single line case statements.
This can be used when you have a simple single line statement.
The single line when statement is written as `when <expression> then <statement>`.
And when used in the else statement it is written as `else <statement>`.

```Crystal
case var
when 1 then puts "One"
when 2 then puts "Two"
else puts "Other"
end
```

## Case with types

Case allows for the matching with types.
The comparison will use the `is_a?` operator to check the type of the variable.
This allows for example to have one branch for each type in a union type.

```Crystal
case var
when Int32
  puts "Int32"
when String
  puts "String"
else
  puts "Other"
end
```

## Implicit object

Case allows for the use of an implicit object.
This allows for example a when expression to be a method call on the case expression.
Based on if the method returns a truthy or falsey value will the case be matched or not.

```Crystal
case 1
when .odd?
  puts "Odd"
when .even?
  puts "Even"
end
```

[case]: https://crystal-lang.org/reference/latest/syntax_and_semantics/case.html
[case-subsumption]: https://crystal-lang.org/reference/latest/syntax_and_semantics/operators.html#subsumption

## Instructions

In this exercise we will simulate the first turn of a [Blackjack][blackjack] game.

## 1. Calculate the value of any given card.

You will receive two cards and will be able to see the face up card of the dealer.
All cards are represented using a string such as "ace", "king", "three", "two", etc.
The values of each card are:

| card  | value |  card   | value |
| :---: | :---: | :-----: | :---: |
|  ace  |  11   |  eight  |   8   |
|  two  |   2   |  nine   |   9   |
| three |   3   |   ten   |  10   |
| four  |   4   |  jack   |  10   |
| five  |   5   |  queen  |  10   |
|  six  |   6   |  king   |  10   |
| seven |   7   | _other_ |   0   |

~~~~exercism/note
Commonly, aces can take the value of 1 or 11 but for simplicity we will assume that they can only take the value of 11.
~~~~

Implement the method `Blackjack.parse_card` which takes a card as a string as an argument.
The method should return the value of the card as an integer.

```Crystal
Blackjack.parse_card("ace")
# => 11
```

## 2. Name ranges of values.

The player score has to be categorized into ranges of values.
Player scores are computed by adding up the values of the two player cards.
The ranges that are used are:

|   range   |  value   |
| :-------: | :------: |
|    low    | [4, 11]  |
|    mid    | [12, 16] |
|   high    | [17, 20] |
| blackjack |   [21]   |

Implement the method `Blackjack.card_range` which takes two cards as strings as arguments.
The method should return the name of the range of values the two cards fall into.

```Crystal
Blackjack.card_range("ten", "king")
# => "high"
```

## 3. Implement the decision logic for the first turn.

Depending on your two cards and the card of the dealer, there is a strategy for the first turn of the game, in which you have the following options:

- Stand (S)
- Hit (H)
- Split (P)
- Automatically win (W)

Although not optimal yet, you will follow the strategy your friend Alex has been developing, which is as follows:

- If you have a pair of aces you must always split them.
- If you have a Blackjack (two cards that sum up to a value of 21), and the dealer does not have an ace, a figure or a ten then you automatically win.
  If the dealer does have any of those cards then you'll have to stand and wait for the reveal of the other card.
- If your cards sum up to a value within the range [17, 20] you should always stand.
- If your cards sum up to a value within the range [12, 16] you should always stand unless the dealer has a 7 or higher, in which case you should always hit.
- If your cards sum up to 11 or lower you should always hit.

Implement the method `Blackjack.first_turn` which takes three cards as strings as arguments.
The method should return the decision you should take as a string.

```Crystal
Blackjack.first_turn("ace", "ace", "two")
# => "P"
```

[blackjack]: https://en.wikipedia.org/wiki/Blackjack

## Source

### Created by

- @meatball133

### Contributed to by

- @ryanplusplus