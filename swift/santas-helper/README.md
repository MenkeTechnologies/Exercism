# Santa's Swifty Helper

Welcome to Santa's Swifty Helper on Exercism's Swift Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

[Tuples][tuples] are used to combine multiple values into a single compound value where each of the values may have a different type.
The compound value has a type that is the combination of the individual values' types.
Like arrays, tuples are ordered collections.
However, contrary to arrays, tuples are fixed in size, thereby to change the number of elements in a tuple, a new tuple must be created.

To create a tuple, you enclose the values in parentheses, separated by commas:

```swift
let order = ("biscuits", 2.99, 3)
```

You can also specify the type of each value in the tuple:

```swift
let order: (String, Double, Int) = ("biscuits", 2.99, 3)
```

To extract the individual values from a tuple, you can use the `.n` syntax, where _n_ is the index of the element you would like to access, starting with 0:

```swift
let orderItem = order.0
// Returns "biscuits"

let orderQuantity = order.2
// Returns 3
```

## Named tuples

Tuples can be named by providing labels for each of the values:

```swift
let order = (item: "biscuits", price: 2.99, quantity: 3)
```

This can be useful for making the tuple more readable and self-explanatory, especially when the tuple is used as a return value from a function.

It also allows you to access the individual values by their names:

```swift
let orderItem = order.item
// Returns "biscuits"
let orderQuantity = order.quantity
// Returns 3
```

As with non-named tuples, you can specify the type of each value in a named tuple:

```swift
let order: (item: String, price: Double, quantity: Int) = (item: "biscuits", price: 2.99, quantity: 3)
```

## Modifying tuples

Elements of a tuple can be modified, it can be done using the `.n` syntax.

```swift
var order = ("biscuits", 2.99, 3)
order.0 = "cookies"
order.1 = 1.99
order.2 = 5

order
// Returns ("cookies", 1.99, 5)
```

## Multiple return values

Functions in Swift can only return a single value.
However, since a tuple is a single value, you can package multiple values into a tuple and return that tuple from a function.
This allows you to effectively [return multiple values from a function][multiple-return-values].

Here is an example of a function that returns a tuple with a quotient and a remainder:

```swift
func divide(_ dividend: Int, by divisor: Int) -> (quotient: Int, remainder: Int) {
  let quotient = dividend / divisor
  let remainder = dividend % divisor
  return (quotient, remainder)
}
```

## Tuple decomposition

You can decompose a tuple into its individual components by providing a number of variables equal to the number of elements in the tuple.
Using tuple decomposition can increase the readability of your code, since it allows you to assign meaningful names to the individual values.

```swift
let order = ("biscuits", 2.99, 3)
let (item, price, quantity) = order

item
// Returns "biscuits"
```

Decomposition can also be done with for-in loops:

```swift
let orders = [("biscuits", 2.99, 3), ("cookies", 1.99, 5)]

for (item, price, quantity) in orders {
  print("Item: \(item), Price: \(price), Quantity: \(quantity)")
}
```

[tuples]: https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics/#Tuples
[multiple-return-values]: https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions/#Functions-with-Multiple-Return-Values

## Instructions

You are an elf working in Santa Claus' logistics division and you have been given a pair of tasks from the boss for upgrading the system's software.

## 1. Get name of the toy

The system needs to be able to get the name of a toy from the database.
The database is made of tuples of type `(name: String, quantity: Int)`.

Implement the function `getName(_:)`, that takes an argument which hold a tuple of type `(name: String, quantity: Int)`.

```swift
let toy = (name: "Doll", quantity: 10)
getName(toy)
// Returns "Doll"
```

## 2. Add a new toy to the database

The toy market is a quick and changing market, what is popular changes very rapidly.
Thereby a function which creates a new toy is needed.

Implement the function `createToy(name:amount:)`, that takes an argument `name` which holds the name of the toy, and `amount` which holds the quantity of the toy.

```swift
getName(name: "Doll", quantity: 10)
// Returns (name: "Doll", quantity: 10)
```

## 3. Update quantity of a toy

The elfs in santas workshop is constantly making more toys, and santa needs to keep track of the quantity of each toy.
To do this, the system needs to be able to update the quantity of a toy in the database.

Implement the function `updateQuantity(_:toy:Amount:)`, that takes the arguments:
- `toys` which holds an array of tuples of type `(name: String, quantity: Int)`.
- `toy` which holds the name of the toy to update.
- `amount` which holds the new quantity of the toy.

You can assume that the toy is already in the database, and don't need to check for that.

```swift
let toys = [(name: "Doll", quantity: 10), (name: "Car", quantity: 5), (name: "Train", quantity: 3)]
updateQuantity(toys, toy: "Doll", amount: 15)
// Returns [(name: "Doll", quantity: 15), (name: "Car", quantity: 5), (name: "Train", quantity: 3)]
```

## 4. Add category key to a toy

Santa wants to be able to categorize the toys in the database.
This is so they can easily find the toys when they need to make a delivery, and to be able to sort the toys in the database.

However, when the system was first implemented, the category key was forgotten.
Now the system needs to be able to add a category key to a toy in the database.

Implement the function `addCategory(_:category:)`, that takes the arguments:
- `toys` which holds an array of tuples of type `(name: String, quantity: Int)`.
- `category` which holds the category key to add to the toys.

You can assume that the toy is already in the database, and don't need to check for that.
You can also assume that there is no category key already in the toy.

```swift
let toys = [(name: "Car", quantity: 5), (name: "Train", quantity: 3)]
addCategory(toys,, category: "Vehicle")
// Returns [(name: "Car", quantity: 5, category: "Vehicle"), (name: "Train", quantity: 3, category: "Vehicle")]
```

## Source

### Created by

- @wneumann
- @meatball133