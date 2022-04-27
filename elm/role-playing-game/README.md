# Role Playing Game

Welcome to Role Playing Game on Exercism's Elm Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

The `Maybe` type is the solution in the Elm language for optional values.
It is thus present in type signatures of a wide number of core Elm functions and understanding it is crucial.

## Definition and type variable

The `Maybe` type is defined as follows:

```elm
type Maybe a = Nothing | Just a
```

This is known as a "custom type" definition in Elm terminology.
Custom types are introduced in details in another concept of this track but we won't need it to understand specifically `Maybe`.
The `a` in `Maybe a` and `Just a` represents a type variable, meaning it can be any type, such as `Int`, `Bool` or `String`.
As such, a `Maybe String` is a variable that optionally holds a `String`, while a `Maybe Int` would optionally hold an `Int`.

```elm
name : Maybe String
name = Just "Matthieu"

age : Maybe Int
age = Just 29
```

The vertical bar `|` in the type definition of `Maybe` means "OR".
It indicates that it can either be `Nothing` OR be `Just` something.
So imagine that the name and age were not filled by that person, we would have the following.

```elm
name : Maybe String
name = Nothing

age : Maybe Int
age = Nothing
```

## Reading the content of a Maybe value

Reading the content of a `Maybe` value is done via "pattern matching".
Pattern matching is also introduced in more details in another concept, so we just focus on how pattern matching a `Maybe` works.
Sometimes, we can also avoid pattern matching by using predefined functions such as `Maybe.withDefault`.

```elm
-- This function returns "Hello, <name>!" if the name was provided.
-- Otherwise, it just says "Hello, World!".
sayHello : Maybe String -> String
sayHello maybeName =
    case maybeName of
        Nothing -> "Hello, World!"
        Just someName -> "Hello, " ++ someName ++ "!"

sayHello (Just "Matthieu")
    --> "Hello, Matthieu!"

sayHello Nothing
    --> "Hello, World!"

-- Here we use Maybe.withDefault instead of pattern matching.
sayHelloAgain : Maybe String -> String
sayHelloAgain maybeName =
    let
        subject : String
        subject =
            Maybe.withDefault "World" maybeName
    in
    "Hello, " ++ subject ++ "!"

```

Everytime you use a `Maybe` value, the Elm compiler will check that your code handles all possibilities so you can never pattern match a `Maybe` and only handle the case where there is a `Just someValue`.
This may seem anoying at first, but it is one of the greatest strengths of the Elm language.
This will prevent hundreds of bugs and makes compiler-guided refactoring a fearless and rewarding experience.

## Instructions

In this exercise, you'll be implementing mechanics of a role-playing game.
A player's character is represented by the following type:

```elm
type alias Player =
    { name : Maybe String
    , level : Int
    , health : Int
    , mana : Maybe Int
    }
```

Players in this game must reach level 10 before they unlock a mana pool so that they can start casting spells.
You're working on two pieces of functionality in this game, the revive mechanic and the spell casting mechanic.

## 1. Introduce yourself

Write the content of the `introduce` function.
Stealthy players may be hiding their name and will be introduced as `"Mighty Magician"`.
Otherwise, just use your name to introduce yourself.

```elm
introduce { name = Nothing, level = 2, health = 8, mana = Nothing }
    --> "Mighty Magician"

introduce { name = Just "Merlin", level = 2, health = 8, mana = Nothing }
    --> "Merlin"
```

## 2. Implement the revive mechanic

The `revive` function should check that the player's character is indeed dead (their health has reached 0).
If they are, it should return a new `Player` instance with 100 health.
Otherwise, if the player's character isn't dead, the `revive` function returns `Nothing`.

If the player's level is 10 or above, they should also be revived with 100 mana.
If they player's level is below 10, their mana should be `Nothing`.
The `revive` function should preserve the player's level.

```elm
deadPlayer = { name = Nothing, level = 2, health = 0, mana = Nothing }

revive deadPlayer
    --> Just { name = Nothing, level = 2, health = 100, mana = Nothing }
```

If the `revive` method is called on a player whose health is 1 or above, then the function should return `Nothing`.

```elm
alivePlayer = { name = Nothing, level = 2, health = 42, mana = Nothing }

revive alivePlayer
    --> Nothing
```

## 3. Implement the spell casting mechanic

The `castSpell` function takes as arguments an `Int` indicating how much mana the spell costs as well as a `Player`.
It returns the updated player, as well as the amount of damage that the cast spell performs.
A successful spell cast does damage equal to two times the mana cost of the spell.
However, if the player has insufficient mana, nothing happens, the player is unchanged and no damage is done.
If the player does not even have a mana pool, attempting to cast the spell must decrease their health by the mana cost of the spell and does no damage.

```elm
wizard = { name = Nothing, level = 18, health = 123, mana = Just 30 }

( updatedWizard, damage ) = castSpell 14 wizard

updatedWizard.mana --> Just 16
damage             --> 28
```

## Source

### Created by

- @mpizenberg

### Contributed to by

- @ceddlyburge