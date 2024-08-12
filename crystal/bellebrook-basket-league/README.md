# Bellebrook Basket League

Welcome to Bellebrook Basket League on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

[Modules][modules] in Crystal serve two purposes:

The first purpose is to create a [namespace][namespace] to avoid name collisions.
However, it also groups code, making it easier to understand what the code is for.

The second purpose is to define [mixins][mixin] to share code to types.

Modules are similar to classes, but the main difference is that they cannot be instantiated and, thus, don't have instance variables.

To declare a module, you use the `module` keyword followed by the module's name.

```crystal
module Foo
end
```

## Namespace

A namespace is a way to group code. 
This avoids name clashes and makes it easier to understand what the code is for.
When wanting to access a constant or a class that has been placed inside a namespace, you use the `::` operator.

```crystal
module Foo
  class Bar
  end
end

Foo::Bar.new
```

## Use it as a mixin

This can be useful when, for example, multiple classes need the same "base" functionality or when code needs to be shared between unrelated classes.
Or when wanting to share code between classes that are not related.

There are two different ways to use a module as a mixin: the first is to use the `include` keyword, and the second is to use the `extend` keyword.

Both methods will make constants available to the type that includes or extends the module.

### Include

Include will make all methods in the module available as instance methods on the type that includes the module.
The `include` keyword should be at the top of the type, followed by the module's name.

```crystal
module Foo
  def foo
    "foo"
  end
end

class Bar
  include Foo
end

Bar.new.foo # => "foo"
```

### Extend

Extend works similarly to include, but instead of making the methods available as instance methods, it makes them available as class methods.
The `extend` keyword should be written at the top of the type, followed by the module's name.

```crystal
module Foo
  def foo
    "foo"
  end
end

class Bar
  extend Foo
end

Bar.foo # => "foo"
```

## Extend self

A typical pattern in Crystal uses the [`extend self`][extend self] pattern in a module.
This will make all methods in the module available as class methods on the module itself.
This means you don't have to assign each method to the module using the `def self.method_name` syntax.


```crystal
module Foo
  extend self

  def foo
    "foo"
  end
end

Foo.foo # => "foo"
```

[mixin]: https://en.wikipedia.org/wiki/Mixin
[modules]: https://crystal-lang.org/reference/syntax_and_semantics/modules.html
[extend self]: https://crystal-lang.org/reference/syntax_and_semantics/modules.html#extend-self
[namespace]: https://en.wikipedia.org/wiki/Namespace

## Instructions

Bellebrook Basketball League is a league of multiple teams, each with a roster of players.
A new season is about to start, and they need to create a new ticketing system to sell tickets for the games.
Last season, they sold tickets at the stadium's entrance, but popularity has exploded, and they have decided to sell tickets online this season to handle the increased demand.

The league has contacted you and asked you to create a system to handle ticket sales.

## 1. Create a ticketing system

First, you need to create a ticketing system to handle ticket sales.
The ticketing system needs to tell how many tickets are available for a game.

An instance of a class called `TicketSystem` should be created for each game.
The initialized state should hold the following information:

1. How many tickets there are available for the game.
2. Which stadium the game is played at.

Construct an initialized state from arguments indicating the number of tickets available and which stadium the match is played at.
The initialized state should consist of the instance variables `@tickets_available` and `@stadium`.
These should contain the first and second arguments given, respectively.

```crystal
TicketSystem.new(100, "Bellebrook")
# => #<TicketSystem:0x10f0b8 @tickets_available=100, @stadium="Bellebrook">
```

## 2. Get amounts of tickets available

First, you need to create a method that returns the amount of tickets available for a given game.

Define a module named `TicketingReservation` above the already defined class.
This module should be included in the `TicketSystem` class.

Inside the module, define a method called `tickets_available`.
This method should return the amount of tickets available.

```crystal
ticket_system = TicketSystem.new(100)
ticket_system.tickets_available
#=> 100
```

## 3. Order tickets

You must create a method that checks if tickets are available for a given game.
The game needs to have 100 tickets in reserve.
This is to ensure that there are always tickets available for the people who buy tickets at the stadium entrance.

Inside the module `TicketingReservation`, define a method called `order_ticket?`.
The method should return `true` if at least 100 tickets are available and `false` otherwise.
If at least 100 tickets are available, the method should also decrease the number of tickets available by 1.

```crystal
ticket_system = TicketSystem.new(100)
ticket_system.order_ticket?
#=> true
```

## 4. Order message

The ticketing system has to have messages that are easy for users to understand.
And the messages should feel personal, so they should include the user's name.

If the ticket purchase was successful, the user should get a message telling them that the purchase was successful, their ticket number, and which stadium the game is played at.
The ticket number should be the number of tickets available before the order.

If the purchase was successful, the message should look like this: `{name}, your purchase was successful, your ticket number is #{ticket_number}, and the game is played at the {stadium_number} stadium.`.
If the purchase was unsuccessful, the message should look like this: `{name}, your purchase was unsuccessful, and there are not enough tickets available.`.

Inside the module `TicketingReservation,` define a method called `order_message` that takes an argument `name` containing the purchaser's name.
The method should return a string with the message.

```crystal
ticket_system = TicketSystem.new(100, "Bellebrook")
ticket_system.order_message("John")
#=> "John, your purchase was successful, your ticket number is #100, and the game is played at the Bellebrook stadium."
```

## Source

### Created by

- @meatball133
- @ryanplusplus