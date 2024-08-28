# spellbound-steel

Welcome to spellbound-steel on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

In programming, [iteration][iteration] refers to the process of repeating a block of code multiple times.
This can be done by using concepts such as while loops and until loops.
It can also be done by using recursion, which is a function that calls itself.

However, most often you want to iterate over a collection of items, such as an `Array`, `Range` or `String`.
Both the `Array` and `Range` classes in Crystal include the [`Enumerable`][enumerable] module, which provides a number of methods for iterating over the elements.
Meanwhile, the `String` class has its own set of methods for iterating over the characters.

Crystal also doesn't have any for statement like other languages.
Instead it has several methods that can be used to iterate.

## Iterating

The most common way to iterate over a collection is to use the [`each`][each] method, which yields each element in the collection to a block.
This can be done easily with a `Range`.
Say you want to loop between 1 and 3, you can use the `each` method to iterate over the range.

```crystal
(1..3).each do |n|
  puts n
end

# Output:
# 1
# 2
# 3
```

Even simpler, if you just want to iterate a number of times you can use the [`times`][times] method, which exists on the `Int` class.

```crystal
3.times do |n|
  puts n
end

# Output:
# 0
# 1
# 2
```

## Iterating over a `String`

A `String` is a sequence of characters and doesn't belong to the `Enumerable` module, which means it has its own set of methods for iterating over the characters.
The most common way to iterate over a `String` is to use the [`each_char`][each_char] method, which yields each character in the `String` to a block.

~~~~exercism/note
The `each_char` method feeds a `Char` object and not a `String` object to the block.
~~~~

```crystal
str = "hello"
str.each_char { |char| puts char }

# Output:
# h
# e
# l
# l
# o
```

Another way of iterating over a `String` is to use the [`each_line`][each_line] method.
This method is mostly used when reading a file line by line.

```crystal
str = "hello\nworld"
str.each_line do |line|
  puts line
end

# Output:
# hello
# world
```

## Iterating over an object that includes the `Enumerable` module

The [`Enumerable`][enumerable] module provides a number of methods for iterating over the elements of a collection.
Collections that include the `Enumerable` module are `Array`, `Range`, `Hash`, `Set`, and others, the later ones will be covered in later concepts.

The most common way to iterate over an `Array` is to use the [`each`][each] method, which yields each element in the `Array` to a block.

```crystal
arr = [5, 2, 3]
arr.each do |element|
  puts element
end

# Output:
# 5
# 2
# 3
```

### Map

The [`map`][map] method is another way to iterate over an `Array`, it returns a new `Array` containing the results of applying the block to each element.
It is similar to the `each` method, but it returns a new `Array` with the transformed elements.
Transformation is very useful when you want to apply a function to each element of the collection, which is a common operation.

```crystal
arr = [1, 2, 3]
new_arr = arr.map do |element|
  element * 2
end

new_arr
# => [2, 4, 6]
```

With a control flow such as `if` so can you filter which elements to transform.

```crystal
arr = [1, 2, 3]
new_arr = arr.map do |element|
  if element.odd?
    element * 2
  else
    element
  end
end

new_arr
# => [2, 2, 6]
```

### With Index

Sometimes you need to know the index of the element you are iterating over, you can use the [`each_with_index`][each_with_index] or [`map_with_index`][map_with_index] method for that.
It yields each element and its index to a block, the method also accepts an optional argument to specify the starting index.

```crystal
arr = [1, 2, 3]
arr.each_with_index(4) do |element, index|
  puts "Element: #{element}, Index: #{index}"
end

# Output:
# Element: 1, Index: 4
# Element: 2, Index: 5
# Element: 3, Index: 6
```

Note that the [`each_char_with_index`][each_char_with_index] method is also available for `String` objects.

### sum

The [`sum`][sum] method returns the sum of all elements in the collection, it also accepts an optional block to transform the elements before summing them.
It also accepts an optional argument to specify the initial value of the sum.

```crystal
arr = [1, 2, 3]
arr.sum
# => 6

arr.sum(2) { |n| n * 2 }
# => 14
```

### reduce

[`reduce`][reduce] or fold as it is known in other languages, is a method that with a combine method and an initial value, it will combine all the elements in the collection.
The `reduce` method has an accumulator that is passed to the block, the accumulator is the result of the previous iteration.
This becomes a recursive process that will combine all the elements in the collection.

```crystal
arr = [1, 2, 3]
arr.reduce(0) do |acc, n|
  acc + n
end
# => 6
```

`reduce` might seem similar to `sum`, but `reduce` is more flexible because it allows you to specify the initial value of the accumulator and the combine method.
`reduce` can be used to implement `sum`, `count`, and other methods.

[times]: https://crystal-lang.org/api/Int.html#times%28%26block%3Aself-%3E%29%3ANil-instance-method
[enumerable]: https://crystal-lang.org/api/Enumerable.html
[each_char]: https://crystal-lang.org/api/String.html#each_char%28%26%29%3ANil-instance-method
[each_char_with_index]: https://crystal-lang.org/api/String.html#each_char_with_index%28offset%3D0%2C%26%29-instance-method
[each_line]: https://crystal-lang.org/api/String.html#each_line%28chomp%3Dtrue%2C%26block%3AString-%3E%29%3ANil-instance-method
[each]: https://crystal-lang.org/api/Enumerable.html#each%28%26%3AT-%3E%29-instance-method
[map]: https://crystal-lang.org/api/Enumerable.html#map%28%26%3AT-%3EU%29%3AArray%28U%29forallU-instance-method
[each_with_index]: https://crystal-lang.org/api/Enumerable.html#each_with_index%28offset%3D0%2C%26%29-instance-method
[map_with_index]: https://crystal-lang.org/api/Enumerable.html#map_with_index%28offset%3D0%2C%26%3AT%2CInt32-%3EU%29%3AArray%28U%29forallU-instance-method
[sum]: https://crystal-lang.org/api/Enumerable.html#sum%28initial%2C%26%3AT-%3E%29-instance-method
[reduce]: https://crystal-lang.org/api/Enumerable.html#reduce%28memo%2C%26%29-instance-method
[iteration]: https://en.wikipedia.org/wiki/Iteration

## Instructions

In the card game of Spellbound Steel, you have a deck of cards with either different characters such as warriors, mages, and rogues, or different spells such as fireball, ice storm, and lightning bolt.
There are two to four players in the game, and the goal is to defeat the other players by playing cards with higher power levels.

You want to get the overhand in the game by creating various methods to calculate, sort, and compare the power levels of the cards.

## 1. Find card in the deck

You are not sure if a card is in the deck or not.
Therefore you want a method to tell you were you can find the first card in the deck of the kind you are looking for.
Or if the card is not in the deck, you want to know that as well.

Implement a method `SpellboundSteel.find_card?` that takes an `Array` of `String` cards and a `String` card to find.
The method should return the index of the first card in the deck that matches the card to find.
If the card is not in the deck, the method should return `nil`.

```crystal
cards = ["Warrior", "Mage", "Rogue", "Fireball", "Ice Storm", "Lightning Bolt", "Mage"]
SpellboundSteel.find_card?(cards, "Mage")
# => 1
```

## 2. Make all characters capitalized

To make the cards easier to read, you want to capitalize all characters in the card names.
This is so you can easily see the card names when you play the cards.

Implement a method `SpellboundSteel.capitalize_cards` that takes an `Array` of `String` cards and returns the cards with all characters capitalized.

```crystal
cards = ["warrior", "mage", "rogue", "fireball", "ice storm", "lightning bolt"]
SpellboundSteel.capitalize_cards(cards)
# => ["Warrior", "Mage", "Rogue", "Fireball", "Ice Storm", "Lightning Bolt"]
```

## 3. Calculate the power level of all cards

In the game is it important to calculate the power level of all cards.
The power for all cards can been seen in the following table:

| Card Type | Power Level |
| --------- | ----------- |
| Warrior   | 10          |
| Mage      | 20          |
| Rogue     | 30          |
| Fireball  | 15          |
| Ice Storm | 25          |
| Lightning Bolt | 35    |

Implement a method `SpellboundSteel.calculate_power_level` that takes an `Array` of `String` cards and returns the total power level of all cards.

```crystal
cards = ["Warrior", "Mage", "Rogue", "Fireball", "Ice Storm", "Lightning Bolt"]
SpellboundSteel.calculate_power_level(cards)
# => 135
```

## 4. Decode a card

In the game, there are what is known as cursed cards.
These cards is a hidden card that can only be decoded by the player who played it.
To decode the card you need to take every second character in the card name and reverse it.
That will give the name of the card.

Implement a method `SpellboundSteel.decode_card` that takes a `String` card and returns the decoded card.

```crystal
SpellboundSteel.decode_card("Wraoir")
# => "Warrior"
```

## Source

### Created by

- @meatball133

### Contributed to by

- @ryanplusplus