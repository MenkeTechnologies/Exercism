# List Ops

Welcome to List Ops on Exercism's Odin Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Implement basic list operations.

In functional languages list operations like `length`, `map`, and `reduce` are very common.
Implement a series of basic list operations, without using existing functions.

The precise number and names of the operations to be implemented will be track dependent to avoid conflicts with existing names, but the general operations you will implement include:

- `append` (_given two lists, add all items in the second list to the end of the first list_);
- `concatenate` (_given a series of lists, combine all items in all lists into one flattened list_);
- `filter` (_given a predicate and a list, return the list of all items for which `predicate(item)` is True_);
- `length` (_given a list, return the total number of items within it_);
- `map` (_given a function and a list, return the list of the results of applying `function(item)` on all items_);
- `foldl` (_given a function, a list, and initial accumulator, fold (reduce) each item into the accumulator from the left_);
- `foldr` (_given a function, a list, and an initial accumulator, fold (reduce) each item into the accumulator from the right_);
- `reverse` (_given a list, return a list with all the original items, but in reversed order_).

Note, the ordering in which arguments are passed to the fold functions (`foldl`, `foldr`) is significant.

You will need to use Odin parameter polymorphism (more commonly called generics) for this exercise .
If you haven't seen this feature before, here is a quick run-down to get you started.

Parameter polymorphism is a programming language feature allowing programmers to be less specific (more generic, hence the name) about the types used in their code while still maintaining type safety.
Obviously this only makes sense for strongly-typed languages like Odin.

Let's start with an example.
Let's say that you want to increment all the elements of an array by a fixed value, a simple enough problem.

```odin
incr_array_int :: proc(a: []int, by: int) -> []int {

    new_array := make([]int, len(a))
    for i := 0; i < len(a); i+= 1 {
        new_array[i] = a[i] + by
    }
    return new_array
}
```

What if now, you also need the same functionality for floating points?

```odin
incr_array_f64 :: proc(a: []f64, by: f64) -> []f64 {

    new_array := make([]f64, len(a))
    for i := 0; i < len(a); i+= 1 {
        new_array[i] = a[i] + by
    }
    return new_array
}
```

And then for unsigned integers, 32bit floats, and so on?

Before long you end up with a plethora of procedures performing the exact same function but on different type.
If you ever need to update the logic, then you have to make sure you do it for all of the variants, which can turn into a lot of maintenance work.
The other annoyance is that you need to give different names to each of the procedure since Odin doesn't support implicit procedure overloading (You could still use explicit overloading but that's a story for another exercise).

Odin, being a practical language, offers a solution with parameter polymorphism.
As long as the compiler can figure out the type of a parameter at compile time, then you can give it a generic name, like `T`.
Let's rewrite our procedure above:

```odin
incr_array :: proc(a: []$T, by: T) -> []T {

    new_array := make([]T, len(a))
    for i := 0; i < len(a); i+= 1 {
        new_array[i] = a[i] + by
    }
    return new_array
}
```

Notice that we replaced all the type annotations (`int` or `f64`) with `T` and that the first occurrence of `T` is preceded by a dollar sign (`$T`).
The `$T` type tells the Odin compiler that the name `T` is a generic name for the type, to be replaced with the actual name during compilation.
And, since the compiler now knows about the generic type `T`, the following occurrences of the same type only need to be marked with the chosen type name (`T`).

You can now write code like:

```Odin
a_int := incr_array([]int{1, 2, 3}, 10)
a_f64 := incr_array([]f64{1.0, 2.0, 3.0}, 10.0)
```

In the first statement, the Odin compiler will identify the type of the first parameter (`[]int`) with the type of the generic parameter (`[]$T`), deduce that `T = int` and proceed to compile a version with all following instances of `T` replaced by `int` (equivalent to the specialized version `incr_array_int()` above).
If you were to omit the dollar sign in the definition of the first parameter, the compiler would have searched in the current package and the list of imports for a type called `T` and most likely returned a compilation error `Error: Undeclared name: T`.

The second statement works exactly like the first one but with the compiler identifying `T` as `f64`.

It is customary to give generic types single letter names (`T` and `E` are often used)

You should now know enough about parameter polymorphisms, aka generic types, to tackle the List Operations exercise.

## Source

### Created by

- @rmonnet