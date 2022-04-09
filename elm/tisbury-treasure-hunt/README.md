# Tisbury Treasure Hunt

Welcome to Tisbury Treasure Hunt on Exercism's Elm Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

Tuples in Elm can hold two or three values, and each value can have any type.
In Elm, Tuples are mostly used for simple transient types.
For this reason Tuples have a maximum of 3 values, and as a further encouragement convenience functions are only supplied for 2 values.
For more complex data, it is best to switch to records.
A common use is if you need to return more than one value from a function.
Tuple fields don't have names, they are accessed by means of destructuring or by position.

You can read a [concise introduction to tuples][tuples-concise].
There is also a [more in depth introduction][tuples-in-depth], and the [API doc of the Tuple module][tuple-core] contains code examples and detailed documentation.

## Declaration

Types for Tuples are created with parentheses and their element types are separated by commas.

```elm
type alias IntStringTuple = (Int, String)
```

## Creation

Tuples are created with parentheses and their elements are separated by commas.

```elm
aTuple = (123, "elements can be of differing types")
```

You can also use `Tuple.pair` to create a tuple with two values.

```elm
aTuple = Tuple.pair 123 "elements can be of differing types"
--> (123, "elements can be of differing types")
```

## Access

Tuples can be _destructured_ in bindings using tuple pattern matching.
Destructuring can be done in let expressions, function declarations and case statements.

```elm
doSomethingWith: (Int, String) -> Bool
doSomethingWith aTuple =
let
    (aNumber, aString) = aTuple
in
...
```

```elm
doSomethingWith: (Int, String) -> Bool
doSomethingWith (aNumber, aString) =
    ...
```

Pattern matching in a case statement also allows you to match on content of the values:

```elm
doSomethingWith: (Int, String) -> Bool
doSomethingWith aTuple =
    case aTuple of
        (123, _) ->
            True
        (_, "123") ->
            True
        (aNumber, aString) ->
            ...
```

There are also functions to access tuple values by position, `Tuple.first` and `Tuple.second`.

```elm
doSomethingWith: (Int, String) -> Bool
doSomethingWith aTuple =
    let
        aNumber = Tuple.first aTuple
        aString = Tuple.second aTuple
    in
    ...
```

[tuples-concise]: https://www.bekk.christmas/post/2020/1/once-twice-three-times-a-value
[tuples-in-depth]: https://elmprogramming.com/tuple.html
[tuple-core]: https://package.elm-lang.org/packages/elm/core/latest/Tuple

## Instructions

Aazra and Rui are designing a pirate-themed treasure hunt. There is a list of treasures with map locations, the other a list of place names with map locations.

| Treasure                    | Location |
| --------------------------- | -------- |
| Amethyst Octopus            | (1, F)   |
| Angry Monkey Figurine       | (5, B)   |
| Antique Glass Fishnet Float | (3, D)   |
| Brass Spyglass              | (4, B)   |
| Carved Wooden Elephant      | (8, C)   |
| Crystal Crab                | (6, A)   |
| Glass Starfish              | (6, D)   |
| Model Ship in Large Bottle  | (8, A)   |
| Pirate Flag                 | (7, F)   |
| Robot Parrot                | (1, C)   |
| Scrimshaw Whale's Tooth     | (1, F)   |
| Silver Seahorse             | (4, E)   |
| Vintage Pirate Hat          | (7, E)   |

| Place Name                            | Location | Quandrant |
| ------------------------------------- | -------- | --------- |
| Seaside Cottages                      | (C, 1) | Blue      |
| Aqua Lagoon (Island of Mystery)       | (F, 1) | Yellow    |
| Deserted Docks                        | (A, 2) | Blue      |
| Spiky Rocks                           | (D, 3) | Yellow    |
| Abandoned Lighthouse                  | (B, 4) | Blue      |
| Hidden Spring (Island of Mystery)     | (E, 4) | Yellow    |
| Stormy Breakwater                     | (B, 5) | Purple    |
| Old Schooner                          | (A, 6) | Purple    |
| Tangled Seaweed Patch                 | (D, 6) | Orange    |
| Quiet Inlet (Island of Mystery)       | (E, 7) | Orange    |
| Windswept Hilltop (Island of Mystery) | (F, 7) | Orange    |
| Harbor Managers Office                | (A, 8) | Purple    |
| Foggy Seacave                         | (C, 8) | Purple    |

Players will travel around the map picking up treasures as they go.
Treasure and place locations are formatted differently, to add an extra challenge.
There are also some special places, where certain treasures can be swapped for certain other ones, to add an extra twist to the game.
Your job is to write functions to help them with their game.

## 1. Convert locations

Implement the `placeLocationToTreasureLocation` function that takes a Place Location (such as `('C', 1)`) and converts it to a Treasure Location (such as `(1, 'C')`).

```elm
placeLocationToTreasureLocation ('C', 1)
--> (1,'C')
```

## 2. Compare Treasure and Place locations

Implement the `treasureLocationMatchesPlaceLocation` function that takes a `PlaceLocation` (such as `('C', 1)`) and returns true if it matches a `TreasureLocation` (such as `(1, 'C')`).

```elm
treasureLocationMatchesPlaceLocation ('C', 1) (1, 'C')
--> true

treasureLocationMatchesPlaceLocation ('C', 1) (2, 'C')
--> false
```

## 3. Count Treasure Locations

Implement the `countPlaceTreasures` function, that takes a Place (such as `("Aqua Lagoon (Island of Mystery)", ('F', 1))`), and the list of Treasures, and returns the number of treasures that can be found there.

```elm
place = ("Aqua Lagoon (Island of Mystery)", ('F', 1))

countPlaceTreasures place treasures =
--> 2
```

## 4. Special Places

Implement the `specialCaseSwapPossible` function, which takes a Treasure (such as `("Amethyst Octopus", (1, 'F'))`) and a Place (such as `("Seaside Cottages ", ('C', 1))`), and returns true for the following combinations:

- The Brass Spyglass can be swapped for any other treasure at the Abandoned Lighthouse
- The Amethyst Octopus can be swapped for the Crystal Crab or the Glass Starfish at the Stormy Breakwater
- The Vintage Pirate Hat can be swapped for the Model Ship in Large Bottle or the Antique Glass Fishnet Float at the Harbor Managers Office

Try to implement this function as a case statement with an ad hoc tuple, instead of using if statements (this is a common idiom in Elm).

## Source

### Created by

- @ceddlyburge

### Contributed to by

- @mpizenberg