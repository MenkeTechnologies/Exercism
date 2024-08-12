# Hints

## General

- You need to define all methods out of initialize in the `module`, `TicketingReservation`.
- The module needs to be placed above the `TicketSystem` class.

## 1. Create a ticketing system

- Create a class called `TicketSystem`.
- Create a [constructor][new-initialize] for the class `TicketSystem`.
- Create an [instance variable][instance-variable] `@tickets_available` that is set to the amount of the first argument passed to the constructor.
- Create an [instance variable][instance-variable] `@stadium` that is set to the name of the second argument passed to the constructor.

## 2. Get amounts of tickets available

- Create a module above the `TicketSystem` class called `TicketingReservation`.
- Link the module to the class using the [include][include] keyword.
- Create a method called `tickets_available` inside the module that returns the amount of tickets available.

## 3. Order tickets

- Create a method called `order_ticket?` inside the module.
- Use a [comparison operator][equality-and-comparison] to check that there are at least 100 tickets available.
- If there are at least 100 tickets available, subtract 1 from the `@tickets_available` [instance variable][instance-variable].
- Return `true` if there are at least 100 tickets available, otherwise return `false`.

## 4. Order message

- Create a method called `order_message` inside the module.
- You can use already defined methods to check if there are enough tickets available.
- To form the message, you can use [string interpolation][string-interpolation].

[equality-and-comparison]: https://crystal-lang.org/reference/latest/syntax_and_semantics/operators.html#equality-and-comparison
[include]: https://crystal-lang.org/reference/syntax_and_semantics/modules.html#include
[instance-variable]: https://crystal-lang.org/reference/syntax_and_semantics/methods_and_instance_variables.html#methods-and-instance-variables
[new-initialize]: https://crystal-lang.org/reference/syntax_and_semantics/new%2C_initialize_and_allocate.html
[string-interpolation]: https://crystal-lang.org/reference/tutorials/basics/40_strings.html#interpolation