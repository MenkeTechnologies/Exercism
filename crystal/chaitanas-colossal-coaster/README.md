# Chaitanas Colossal Coaster

Welcome to Chaitanas Colossal Coaster on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

Arrays are a common data structure to work with.
Thereby, there is a collection of methods that can be used to deal with arrays.
Which includes sorting, reversing, inserting, and many more.

Some of these methods are destructive, which means that they modify the original array.
Others are non-destructive, meaning they return a new array and do not modify the original one.

Here are a few of the most common methods that can be used when dealing with arrays:

## insert

When inserting an element in an array, you can use the [`insert`][insert] method, which takes an index and an element as arguments.
The element will be inserted at the specified index, and the rest of the array will be shifted to the right.
If the index is out of bounds, then an `IndexError` will be raised.

```crystal
numbers = [1, 2, 3]
numbers.insert(1, 4)
numbers # => [1, 4, 2, 3]

numbers.insert(5, 5) # => Error: Index out of bounds (IndexError)
```

## delete

When you want to delete a specific element from an array, you can use the [`delete`][delete] method, which takes an element as an argument.
The method returns the element that was removed.
If the element does not exist in the array, then `nil` will be returned.

```crystal
numbers = [1, 2, 3]
numbers.delete(2) # => 2
numbers           # => [1, 3]
```

## first & last

When wanting to get the first or last element of an array, you can use the [`first`][first] and [`last`][last] methods.
These methods take an optional argument specifying how many elements to return.
These can improve readability compared to using the index `0` or `-1`, or using a range.
If the array is empty, an `Enumerable::EmptyError` will be raised.

```crystal
numbers = [1, 2, 3]
numbers.first # => 1
numbers.last  # => 3

numbers.first(2) # => [1, 2]
numbers.last(2)  # => [2, 3]

empty_array = [] of Int32
empty_array.last # => Error: Empty enumerable (Enumerable::EmptyError)
```

## reverse

When wanting to reverse an array, you can use the [`reverse`][reverse] method which returns a new array with the elements in reverse order.
It is important to note that `reverse` returns a new array and does not modify the original array.
If you want to modify the original array, add a `!` to the end of the method name.

```crystal
numbers = [1, 2, 3]
numbers.reverse # => [3, 2, 1]
numbers         # => [1, 2, 3]

numbers.reverse! # => [3, 2, 1]
numbers          # => [3, 2, 1]
```

## Concat(`+`)

The append method(`<<`) is useful when wanting to add objects to an array.
However, when combining two arrays, you can use the [`+`][concat] operator, which returns a new array with the elements of both arrays.

```crystal
[1, 2] + [3, 4] # => [1, 2, 3, 4]
```

If you append an array to another array, the array will be added as a single element.

```crystal
[1, 2] << [3, 4] # => [1, 2, [3, 4]]
```

## empty?

When checking if an array is empty, you can use the [`empty?`][empty?] method, which returns `true` if the array is empty and `false` otherwise.
This improves readability compared to checking the array's length against `0`.

```crystal
[].empty? # => true
[1, 2, 3].empty? # => false
```

## index

When you want to get the index of an element in an array, you can use the [`index`][index] method, which takes an element as an argument.
If the element does not exist in the array, then `nil` will be returned.

```crystal
numbers = [1, 2, 3]
numbers.index(2) # => 1
```

## count

When you want to count the number of elements in an array, you can use the [`count`][count] method, which takes an optional argument specifying the element to count.

```crystal
numbers = [1, 2, 3]
numbers.count # => 3
numbers.count(2) # => 1
```

## sort

When you want to sort an array, you can use the [`sort`][sort] method, which returns a new array with the elements sorted.
As with `reverse`, this method returns a new array and does not modify the original array.

```crystal
numbers = [3, 2, 1]
numbers.sort # => [1, 2, 3]
numbers      # => [3, 2, 1]

numbers.sort! # => [1, 2, 3]
numbers       # => [1, 2, 3]
```

[insert]: https://crystal-lang.org/api/latest/Array.html#insert%28index%3AInt%2Cobject%3AT%29%3Aself-instance-method
[delete]: https://crystal-lang.org/api/latest/Array.html#delete%28obj%29%3AT%7CNil-instance-method
[first]: https://crystal-lang.org/api/latest/Array.html#first%28n%3AInt%29%3AArray%28T%29-instance-method
[last]: https://crystal-lang.org/api/latest/Array.html#last%28n%3AInt%29%3AArray%28T%29-instance-method
[reverse]: https://crystal-lang.org/api/latest/Array.html#reverse%3AArray%28T%29-instance-method
[concat]: https://crystal-lang.org/api/latest/Array.html#%2B%28other%3AArray%28U%29%29%3AArray%28T%7CU%29forallU-instance-method
[empty?]: https://crystal-lang.org/api/latest/Indexable.html#empty%3F%3ABool-instance-method
[index]: https://crystal-lang.org/api/latest/Array.html#index%28object%2Coffset%3AInt%3D0%29-instance-method
[count]: https://crystal-lang.org/api/latest/Enumerable.html#count%28%26%3AT-%3E%29%3AInt32-instance-method
[sort]: https://crystal-lang.org/api/latest/Array.html#sort%3AArray%28T%29-instance-method

## Instructions

Chaitana owns a very popular theme park.
She only has one ride in the very center of beautifully landscaped grounds: The Biggest Roller Coaster in the World(TM).
Although there is only this one attraction, people travel from all over the world and stand in line for hours for the opportunity to ride Chaitana's hypercoaster.

There are two queues for this ride, each represented as a `array`:

1. Normal Queue
2. Express Queue (_also known as the Fast-track_) - where people pay extra for priority access.

You have been asked to write some code to better manage the guests at the park.
You need to implement the following functions as soon as possible before the guests (and your boss, Chaitana!) get cranky.

## 1. Add person to the queue

Define the `ColossalCoaster.add_to_queue` method that takes 4 arguments `<express_queue>, <normal_queue>, <ticket_type>, <person_name>` and returns the appropriate queue updated with the person's name.

1. `<ticket_type>` is an `Int32` with 1 == express_queue and 0 == normal_queue.
2. `<person_name>` is the name (as a `String`) of the person to be added to the respective queue.

```crystal
express_queue = ["Tony", "Bruce"]
normal_queue = ["RobotGuy", "WW"]
ColossalCoaster.add_to_queue(express_queue, normal_queue, 1, "RichieRich")
# => ["Tony", "Bruce", "RichieRich"]
```

## 2. Where are my friends?

One person arrived late at the park but wants to join the queue where their friends are waiting.
But they have no idea where their friends are standing and there isn't any phone reception to call them.

Define the `ColossalCoaster.find_my_friend` method that takes 2 arguments `queue` and `friend_name` and returns the position in the queue of the person's name.

1. `<queue>` is an `array` of people standing in the queue.
2. `<friend_name>` is the name of the friend whose index (place in the queue) you need to find.

```crystal
ColossalCoaster.find_my_friend(["Natasha", "Steve", "T'challa", "Wanda", "Rocket"], "Steve")
# => 1
```

## 3. Can I please join them?

Now that their friends have been found (in task #2 above), the late arriver would like to join them at their place in the queue.
Define the `ColossalCoaster.add_with_friends` method that takes 3 arguments `queue`, `friend_name` and `person_name`.

1. `<queue>` is an `array` of people standing in the queue.
2. `<friend_name>` is the name of the friend at whose position the person should be added.
2. `<person_name>` is the name of the person to add at the index position.

Return the queue updated with the late arrival's name.

```crystal
ColossalCoaster.add_with_friends(["Natasha", "Steve", "T'challa", "Wanda", "Rocket"], "Steve", "Bucky")
# => ["Natasha", "Bucky", "Steve", "T'challa", "Wanda", "Rocket"]
```

## 4. Mean person in the queue

You just heard from the queue that there is a really mean person shoving, shouting, and making trouble.
You need to throw that miscreant out for bad behavior!

Define the `ColossalCoaster.remove_from_queue` method that takes 2 arguments `queue` and `person_name`.

1. `<queue>` is an `array` of people standing in the queue.
2. `<person_name>` is the name of the person that needs to be kicked out.

Return the queue updated without the mean person's name.

```crystal
ColossalCoaster.remove_from_queue(["Natasha", "Steve", "Eltran", "Wanda", "Rocket"], "Eltran")
# => ["Natasha", "Steve", "Wanda", "Rocket"]
```

## 5. Sort the Queue List

For administrative purposes, you need to get all the names in a given queue in alphabetical order.

Define the `ColossalCoaster.sorted_queue` method that takes 1 argument, `queue` (the `array` of people standing in the queue).
The method should return a sorted copy of the `array`.

```crystal
ColossalCoaster.sorted_queue(["Natasha", "Steve", "Eltran", "Natasha", "Rocket"])
# => ['Eltran', 'Natasha', 'Natasha', 'Rocket', 'Steve']
```

## Source

### Created by

- @meatball133