# Castle Dinner

Welcome to Castle Dinner on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

Crystal has a type called [`Nil`][nil], which can only have one value: `nil`.
It is used to represent the absence of a value, and is similar to `null` or `None` in other languages.

Nil values can be returned from various methods for example [`String#[]?`][string-index], which returns `nil` if the index is out of bounds.

```crystal
"foo"[10]? # => nil
```

Crystal has what is known as **NULL REFERENCE CHECKS**, which means that all types are non-nilable by default.
This means you can not assign `nil` to a variable unless you explicitly declare it as a `Nil` type.
In turn this means that the compiler will automatically check for null references.

## Falsey value

Certain approaches can be taken to handle `nil` values.
`nil` is a [falsey][truthy-falsey] value as well are `false`.
This means that statements and other places where a falsey or truthy value is expected it will be treated the same as `false`.

```crystal
if nil
  puts "nil is truthy"
else
  puts "nil is falsey"
end

# => nil is falsey
```

This means that the truthy branch won't be taken if a nilable variable has a value of `nil`.

```crystal
foo = "boo"[2]? # It is possible that foo is nil
if foo
  p foo.class # => Char
end
```

## Check for nil

Crystal has a method that can be used to check if a value is `nil`.
It is called [`nil?`][nil?] and it is available on all objects.

```crystal
foo = "boo"[2]?
if foo.nil?
  puts "foo is nil"
else
  puts "foo is not nil"
end
```

This is a bit different when just using the value in an if statement, since in the last examples would both false and nil be treated as false.
Here only `nil` is treated as falsey, since if it was false it wouldn't have been nil thereby it would have been truthy.

## Or operator

The easiest way to deal with `nil` values is to ensure that they never become `nil` in the first place.
The or operator ([`||`][or]) is often used when dealing with `Bools`, but if understood correctly, it can also be used to deal with `nil` values.
The or operator checks if the first value is truthy, if not the second value is used.
This can be used to make if the value is `nil` it will be falsey and thereby the second value will be used.

```crystal
"foo"[10]? || "bar" # => "bar"
```

[nil]: https://crystal-lang.org/reference/syntax_and_semantics/literals/nil.html
[truthy-falsey]: https://crystal-lang.org/reference/latest/syntax_and_semantics/truthy_and_falsey_values.html
[nil?]: https://crystal-lang.org/api/latest/Object.html#nil?:Bool-instance-method
[string-index]: https://crystal-lang.org/api/latest/String.html#%5B%5D%3F%28index%3AInt%29%3AChar%7CNil-instance-method
[or]: https://crystal-lang.org/reference/latest/syntax_and_semantics/or.html

## Instructions

Your majesty is hosting a dinner party in the [Kalmar Unions][kalmar_union] capital Copenhagen.
It is the biggest party of the year and all the nobles are invited.
But rumors are spreading across the country that there is a plot to poison Your Majesty.

Her majesty has asked you, the royal poison finder, to find out if any food or drinks are poisoned.
Your majesty is planning to serve only **Mushroom pasties** as food, but for drinks, there are a variety of drinks.

## 1. Check if the food is correct

There is a high chance that the food is poisoned if it is not what her majesty ordered.
If the food is not what her majesty ordered, it should be tossed out.

Implement the `check_food?` method, which takes the argument `food` which holds the name of the food as a `String`.
The method should return the food if it is `Mushroom pasties`; otherwise, it should return `nil`.

```crystal
CastleDinner.check_food?("Mushroom pasties")
# => "Mushroom pasties"

CastleDinner.check_food?("Bread")
# => nil
```

## 2. Check if the drink is poisoned

It is possible that the drink is poisoned, but it is a bit more difficult to tell if it is.
The drink is poisoned if it does **not** include the letter `i` in the name, the casing doesn't matter.
The drink should be tossed out if it is poisoned.

Implement the `check_drink?` method, which takes the argument `drink` which holds the drink's name as a `String`.
The method should return the drink if it is not poisoned, otherwise it should return `nil`.

```crystal
CastleDinner.check_drink?("Apple juice")
# => "Apple juice"

CastleDinner.check_drink?("Tea")
# => nil
```

## 3. Replace the drink

Your majesty wouldn't want to make their guests worried about poison in their food.
Therefore, if the drink is poisoned, it should be replaced with a new drink, specifically **Apple juice**.

Implement the `replace_drink` method, which takes the argument `drink` which holds the drink's name as a `String`.
The method should return the drink if it is not poisoned, otherwise it should return `"Apple juice"`.

```crystal
CastleDinner.replace_drink("Orange juice")
# => "Orange juice"

CastleDinner.replace_drink("Tea")
# => "Apple juice"
```

[kalmar_union]: https://en.wikipedia.org/wiki/Kalmar_Union

## Source

### Created by

- @meatball133

### Contributed to by

- @ryanplusplus