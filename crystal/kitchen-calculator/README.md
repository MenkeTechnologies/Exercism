# Kitchen Calculator

Welcome to Kitchen Calculator on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

A [tuple][tuple] is a finite ordered list of elements which is immutable.
Tuples requires all positions to have a fixed type.
This in turns means that the compiler knows what type is at each position.
The types used in a tuple can be different at each position, but the types must be known at compile time.

## Creating a Tuple

Depending on if the tuples values types can be interpreted under compilation, the tuple can be created in different ways.
If the values are known at compile time, the tuple can be created using the tuple literal syntax, otherwise they need to be explicitly declared.
It is also important that the types of the values match the types specified in the tuple and that the number of values matches the number of types specified.
Here is an example of defning through tuple literal syntax:

```crystal
tuple = {1, "foo", 'c'} # Tuple(Int32, String, Char)
```

There is also the possibility to create a tuple using the `Tuple` class.

```crystal
tuple = Tuple(Int32, String, Char).new(1, "foo", 'c')
```

Alternatively, you can explicitly specify the type of the variable assigned to the tuple.

```crystal
tuple : Tuple(Int32, String, Char) = {1, "foo", 'c'}
```

Explicitly specifying the type of the tuple can be useful since that allows for defining that a position should hold a union type.
This means that a position can hold multiple types.

```crystal
tuple : Tuple(Int32 | String, String, Char) = {1, "foo", 'c'}
```

## Conversion

### Creating a tuple from an array

You can create a tuple from an array using the `Tuple` class's `from` method.
This requires that the type of the tuple is specified.

```crystal
array = [1, "foo", 'c']
tuple = Tuple(Int32, String, Char).from(array)
```

### Conversion to Array

You can convert a tuple to an array using the `to_a` method.
The resulting array's element type is the union of the type of each field in the tuple.

```crystal
tuple = {1, "foo", 'c'}
array = tuple.to_a
array # => [1, "foo", 'c']
```

## Accessing Elements

Like arrays, tuples are zero-indexed, meaning that the first element is at index 0.
However, unlike arrays, the type of each element is fixed and known at compile time, therefore when indexing a tuple, the type of the element is specific to the position.
To access an element in a tuple, you can use the `[]` operator.

```crystal
array = [1, "foo", 'c']
array[0]         # => 1
typeof(array[0]) # => Int32 | String | Char

tuple = {1, "foo", 'c'}
tuple[0]         # => 1
typeof(tuple[0]) # => Int32
```

Another difference when it comes to accessing elements from arrays is that if the index is specified, then the compiler will check that the index is within the bounds of the tuple.
This means you will get a compile time error instead of a runtime error.

```crystal
tuple = {1, "foo", 'c'}
tuple[3]
# => Error: index out of bounds for Tuple(Int32, String, Char) (3 not in -3..2)
```

However, if the index is stored in a variable, then the compiler will not be able to check if the index is within the bounds of the tuple at compile time and will instead give a runtime error.

## Subtuple

You can get a subtuple of a tuple by using the `[]` operator with a range.
What is returned is a new tuple with the elements from the range specified.
The range has to be given at compile time, otherwise the compiler will not be able to know the types of the elements in the subtuple.
This means that the range has to be a range literal and not assigned to a variable.

```crystal
tuple = {1, "foo", 'c'}
subtuple = tuple[0..1] # Tuple(Int32, String)

i = 0..1
tuple[i]
# Error: Tuple#[](Range) can only be called with range literals known at compile-time
```

## When to use a Tuple

Tuples are useful when you want to group a fixed number of values together where the types of the values are known at compile time.
This is because tuples require less memory and are faster than arrays due to the immutability of tuples.
Another use case is returning multiple values from a method.
This is particularly helpful if the values have different types since each position in the tuple can have a different type.

Tuples should not be used when a data structure is needed that can grow or shrink in size or often needs to be modified.

[Symbols][symbols] are named identifiers that can be used to refer to a value.
Symbols are created through a symbol literal, which is by prefixing a name with a `:` character, e.g. `:foo`.
They also allow for being written with quotes, e.g. `:"foo"`, which allows, for example, spaces in the name.

```crystal
:foo # => :foo
:"foo boo" # => :"foo boo"
```

Symbols are used in many places in the language, including as keys in namedtuples and to represent method and variable names.

## Symbols in Crystal

Symbols in Crystal are quite different from Ruby.
In Crystal a symbol is a type of constant and is thereby is assigned at compile time.
This means that symbols can't be created dynamically, which is possible in Ruby.

Symbols in Crystal are represented as `Int32`s which makes them very efficient.

## Identifier

What makes symbols different from strings is that they are identifiers and do not represent data or text.
This means that two symbols with the same name are always the same object.

```ruby
"foo".object_id # => 60
"foo".object_id # => 80
:foo.object_id # => 1086748
:foo.object_id # => 1086748
```

## Conversion

Symbols can be converted to strings but not vice versa.
This is because symbols are created at compile time and strings are created at runtime.

```crystal
:foo.to_s # => "foo"
```

[tuple]: https://crystal-lang.org/reference/syntax_and_semantics/literals/tuple.html
[symbols]: https://crystal-lang.org/reference/syntax_and_semantics/literals/symbol.html

## Instructions

While preparing to bake cookies for your friends, you have found that you have to convert some of the measurements used in the recipe.
Only being familiar with the metric system, you need to come up with a way to convert common US baking measurements to milliliters (mL) for your own ease.

Use this conversion chart for your solution:

| Unit to convert | volume | in milliliters (mL) |
| --------------- | ------ | ------------------- |
| mL              | 1      | 1                   |
| US cup          | 1      | 240                 |
| US fluid ounce  | 1      | 30                  |
| US teaspoon     | 1      | 5                   |
| US tablespoon   | 1      | 15                  |

Being a talented programmer in training, you decide to use milliliters as a transition unit to facilitate the conversion from any unit listed to any other (even itself).

## 1. Get the numeric component from a volume-pair

Implement the `KitchenCalculator.get_volume` method.
Given a volume-pair tuple, it should return just the numeric component.

```crystal
KitchenCalculator.get_volume({:cup, 2.0})
# => 2.0
```

## 2. Convert the volume-pair to milliliters

Implement the `KitchenCalculator.to_milliliter` method.
Given a volume-pair tuple, it should convert the volume to milliliters using the conversion chart.

```crystal
KitchenCalculator.to_milliliter({:cup, 2.5})
# => {:milliliter, 600.0}
```

## 3. Convert the milliliter volume-pair to another unit

Implement the `KitchenCalculator.from_milliliter` method. 
Given a volume-pair tuple and the desired unit, it should convert the volume to the desired unit using the conversion chart.

```crystal
KitchenCalculator.from_milliliter({:milliliter, 1320.0}, :cup)
# => {:cup, 5.5}
```

## 4. Convert from any unit to any unit

Implement the `KitchenCalculator.convert` method.
Given a volume-pair tuple and the desired unit, it should convert the given volume to the desired unit.

```crystal
KitchenCalculator.convert({:teaspoon, 9.0}, :tablespoon)
# => {:tablespoon, 3.0}
```

## Source

### Created by

- @meatball133

### Contributed to by

- @ryanplusplus