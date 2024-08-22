# Language List

Welcome to Language List on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

[Array][array] is a mutable data structure that stores a collection of elements of a specific type.
An array is an [indexable][indexable] data structure.
Arrays being mutable means that if a method is called on an array that modifies the array, the array will be modified.
Meaning it doesn't have to be reassigned to the variable.

To create an array, use the array literal denotation syntax (`[]`) and within it, specify the elements of the array separated by a comma.

```crystal
[1, 2, 3] # => [1, 2, 3]
```

Crystal will infer the type of the array from the elements.

```crystal
[1, 2, 3].class # => Array(Int32)
```

## Multi type Arrays

Even if mentioned earlier about arrays being a collection of elements of a specific type, you can create an array with multiple types through the use of [union types][union-types].
This makes so that the array can contain elements of any of the types specified in the union type.
Crystal will infer the type of the array from the elements.

```crystal
[1, "2", 3.0] # => [1, "2", 3.0]

[1, "2", 3.0].class # => Array(Int32 | Float64 | String)
```

## Multi-dimensional arrays

A multi-dimensional array is an array of arrays.
This means that each element in the array is an array itself.
This can be useful when wanting to store data in a table format.
To define a multi-dimensional array, you can either write an array of arrays literal or use the `Array.new` constructor.

```crystal
[[1, 2], [3, 4]]                    # => [[1, 2], [3, 4]]
numbers = Array(Array(Int32)).new() # => []
numbers << [1, 2]                   # => [[1, 2]]
```

## Add an element to an array

To add an element to an array, use the [`<<` (append) operator][append].

```crystal
[1, 2, 3] << 4 # => [1, 2, 3, 4]
```

It is important that the type of the element you want to add is the same as the type of the array, if it is not an error will be raised.

```crystal
numbers : Array(Int32 | Float64) = [1, 2, 3]
numbers << 4.0
numbers # => [1, 2, 3, 4.0]

numbers << "5" # => Error: no overload matches 'Array(Int32 | Float64)#<<' with type String
```

## Size of an Array

As with `String`, can you get the size of an array by using the [`size`][size] method.

```crystal
[1, 2, 3].size # => 3
```

## Empty Arrays

When creating an empty array, the compiler cannot infer the type of the array.
Therefore, you need to specify the type of the array.
This can be done by specifying the type of the array, by using the `of` keyword, or by using the array initializer syntax, which is: `Array(T).new`.

```crystal
[] of (Int32 | Float64 | String)    # => []
Array(Int32 | Float64 | String).new # => []
```

## Accessing Elements

As with `String`, you can access elements in an array by using the [`[]` (index) operator][index] and giving it the index of the element you want to access.
If the index is out of bounds, an `IndexError` will be raised.

```crystal
[1, 2, 3][0] # => 1

[1, 2, 3][3] # => Index out of bounds (IndexError)
```

It is also possible to access elements by using a range.

```crystal
[1, 2, 3][0..1] # => [1, 2]
```

## Create an array from a range

To create an array from a range, use the [`to_a` method][to_a].
This can be useful when you want to create an array of numbers.

```crystal
(1..3).to_a # => [1, 2, 3]
```

## Create an array from a string

To create an array from a string, use the [`split`][split] method.
This lets you split a string into an array of strings by using a delimiter.

```crystal
"1,2,3".split(",") # => ["1", "2", "3"]
```

It is also possible to get an array of characters from a string by using the [`chars`][chars] method.

```crystal
"123".chars # => ['1', '2', '3']
```

To convert an array of `Char` or `String` to a `String` you can use the [`join`][join] method which takes a delimiter as an argument.

```crystal
['1', '2', '3'].join(".") # => "1.2.3"
```

## Deleting element from an array

When you want to delete an element from the end of an array, you can use [`pop`][pop] method which takes an optional argument specifying how many elements to remove from the end of the array.
The method returns the element that was removed.
If the array is empty an `IndexError` will be raised.

```crystal
numbers = [1, 2, 3]
[1, 2, 3].pop # => 3
numbers       # => [1, 2]

empty_numbers = [] of Int32
empty_numbers.pop # => Index out of bounds (IndexError)
```

When you want to delete an element of a specific index from an array, you can use the [`delete_at`][delete_at] method which takes the index of the element to remove as an argument.
If the array is empty an `IndexError` will be raised.

```crystal
numbers = [1, 2, 3]
[1, 2, 3].delete_at(1) # => 2
numbers                # => [1, 3]

empty_numbers = [] of Int32
empty_numbers.delete_at(0) # => Index out of bounds (IndexError)
```

## Modifying values in an array

When you want to modify an element of a specific index from an array, you can use the [`[]=` (index assign) operator][index-assign] which takes the index of the element to modify and the new value as arguments.
If the index is out of bounds, an `IndexError` will be raised.

```crystal
numbers = [1, 2, 3]
numbers[1] = 4
numbers # => [1, 4, 3]

numbers[3] = 5 # => Index out of bounds (IndexError)
```

[array]: https://crystal-lang.org/reference/syntax_and_semantics/literals/array.html
[pop]: https://crystal-lang.org/api/Array.html#pop%3AT-instance-method
[index]: https://crystal-lang.org/api/Indexable.html#%5B%5D%28index%3AInt%29-instance-method
[split]: https://crystal-lang.org/api/String.html#split%28separator%3AString%2Climit%3Dnil%2C%2A%2Cremove_empty%3Dfalse%29%3AArray%28String%29-instance-method
[indexable]: https://crystal-lang.org/api/Indexable.html
[union-types]: https://crystal-lang.org/reference/syntax_and_semantics/union_types.html
[append]: https://crystal-lang.org/api/Array.html#%3C%3C%28value%3AT%29%3Aself-instance-method
[size]: https://crystal-lang.org/api/Array.html#size%3AInt32-instance-method
[to_a]: https://crystal-lang.org/api/Enumerable.html#to_a-instance-method
[chars]: https://crystal-lang.org/api/String.html#chars%3AArray%28Char%29-instance-method
[join]: https://crystal-lang.org/api/Indexable.html#join%28separator%3AString%7CChar%7CNumber%3D%22%22%29%3AString-instance-method
[index-assign]: https://crystal-lang.org/api/Indexable/Mutable.html#%5B%5D%3D%28index%3AInt%2Cvalue%3AT%29%3AT-instance-method
[delete_at]: https://crystal-lang.org/api/Array.html#delete_at%28index%3AInt%29%3AT-instance-method

## Instructions

In this exercise you need to implement some methods to manipulate an array of programming languages.

## 1. Define a method to return an empty language array

Define the `LanguageList.list` method that takes no arguments and returns an empty array of the type `Array(String)`.

```crystal
LanguageList.list()
# => []
```

## 2. Define a method to add a language to the array

Define the `LanguageList.add` method that takes 2 arguments (a _language array_ and a string literal of a _language_).
The method should return the array with the new language added to the end of the array.

```crystal
language_list = LanguageList.list()
# => []
language_list = LanguageList.add(language_list, "Crystal")
# => ["Crystal"]
language_list = LanguageList.add(language_list, "Ruby")
# => ["Crystal", "Ruby"]
```

## 3. Define a method to remove a language from the array

Define the `LanguageList.remove` method that takes 1 argument (a _language array_).
The method should return the array without the last item.
Assume the array will always have at least one item.

```crystal
language_list = LanguageList.list()
# => []
language_list = LanguageList.add(language_list, "Crystal")
# => ["Crystal"]
language_list = LanguageList.add(language_list, "Ruby")
# => ["Crystal", "Ruby"]
language_list = LanguageList.remove(language_list)
# => ["Crystal"]
```

## 4. Define a method to return the nth item in the array

Define the `LanguageList.at` function that takes 2 argument (a _language array_ and an index).
The method should return the language at n index in the array.
Assume that on the index will there always be a language.

```crystal
language_list = LanguageList.new()
# => []
language_list = LanguageList.add(language_list, "Crystal")
# => ["Crystal"]
language_list = LanguageList.add(language_list, "Ruby")
# => ["Crystal", "Ruby"]
LanguageList.at(language_list, 1)
# => "Ruby"
```

## 5. Define a method to parse a string of languages

Define the `LanguageList.parse` method that takes 1 argument (a string literal of languages separated by a comma).
The method should return an array of languages.

```crystal
LanguageList.parse("Crystal, Ruby")
# => ["Crystal", "Ruby"]
```

## Source

### Created by

- @meatball133

### Contributed to by

- @ryanplusplus