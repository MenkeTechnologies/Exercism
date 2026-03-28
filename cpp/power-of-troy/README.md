# Power of Troy

Welcome to Power of Troy on Exercism's C++ Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

## The `auto` Keyword in C++

In C++, the `auto` keyword is a powerful feature introduced in C++11, used to declare variables with an inferred data type.
The compiler deduces the type of the variable based on its initializer, which can make code more readable and easier to maintain.

## Example Usage

Consider the following example where `auto` is used to declare variables:

```cpp
auto dragon_population{3};          // dragon_population is deduced as an integer
auto westeros{7.7777};              // westeros is deduced as a double
auto wedding_location{"The Twins"}; // wedding_location is deduced as a const char*, not std::string
```

In each case, the type of the variable is inferred from the value it is initialized with.

## Type Inference

The `auto` keyword helps by writing more concise and readable code by reducing the verbosity of explicit types.

```cpp
const std::vector<std::string> pigeon_pie{"flour", "butter", "pigeon", "salt"};
auto purple_wedding_pie{pigeon_pie};
purple_wedding_pie.emplace_back("the strangler");
```

In this loop, `auto` deduces the type of `purple_wedding_pie` as `std::vector<std::string>`, avoiding the need to explicitly specify the type again.

## Compatibility

The `auto` keyword is compatible with various C++ constructs making it a versatile tool in modern C++ programming.

```cpp
auto& element{array[0]};           // reference to an element
const auto object{otherObject};    // const type version of otherObject's type
auto* ptr{&x};                     // pointer to x with the same type as x, but as a pointer.
```

In later concept we will often see the `auto` keyword with lambda expressions, range-based for-loops, and iterators.

## Smart Pointers

Smart pointers are a modern C++ feature designed to provide automatic memory management, helping to prevent memory leaks and dangling pointers commonly associated with raw pointers.
They act as wrappers around raw pointers, adding additional functionality such as automatic memory deallocation when the pointer is no longer needed.

## General Syntax

Smart pointers are typically implemented as class templates in the C++ standard library.
The two most commonly used smart pointers are `std::unique_ptr` and `std::shared_ptr`.

## Unique Pointers

`std::unique_ptr` is a smart pointer that owns the object exclusively.
It ensures that at any given time, only one `std::unique_ptr` object owns the resource.
When the owning `std::unique_ptr` is destroyed or reset, it automatically destructs the objects and releases its memory.

```cpp
#include <memory>
// Declaring and defining a unique pointer
auto rightful_king_of_england = std::make_unique<std::string>("Excalibur");

// Unique pointers cannot be copied or assigned
auto mordred = rightful_king_of_england; // Error: Cannot copy a unique_ptr
```

## Advantages of `std::make_unique()`

When creating a `std::unique_ptr`, it's preferable to use `std::make_unique()` instead of directly using `new` to allocate memory.
`std::make_unique()` provides several advantages:
1. **Exception Safety**: `std::make_unique()` guarantees exception safety.
  If an exception is thrown during the construction of the object, memory will be automatically deallocated, preventing memory leaks.
2. **Clarity**: Using `std::make_unique()` makes code clearer and more concise.
  It eliminates the need to explicitly specify the type being allocated, as the template arguments are deduced automatically.
3. **Optimization Opportunities**: Compilers have the opportunity to optimize `std::make_unique()` more effectively than manually allocating memory with `new`, potentially resulting in improved performance.
4. **Avoiding Misuse**: Deleting the underlying resource is possible, when the `std::unique_ptr` is constructed manually.
  That would lead to undefined behavior, when the `std::unique_ptr` tries to delete it at its end of scope.

## Shared Pointers

`std::shared_ptr` is a smart pointer that allows multiple `std::shared_ptr` objects to share ownership of the same resource.
It keeps track of how many shared pointers are referencing the resource, and deallocates the memory only when the last shared pointer owning the resource goes out of scope or is reset.

```cpp
// Declaring and defining a shared pointer to a dynamically allocated string
auto martian_congressional_republic = std::make_shared<std::string>("protomolecule");

// Creating more shared pointer that shares ownership
auto outer_planets_alliance = martian_congressional_republic;
auto united_nations = martian_congressional_republic;
```

~~~~exercism/caution
In C++17 and below, using `std::shared_ptr` with arrays via `std::make_shared<T[]>` is not directly supported.
While it's possible to allocate arrays with `std::make_shared<T[]>`, creating shared pointers directly from them may lead to undefined behavior due to differences in memory management between single objects and arrays.
Instead, consider using `std::vector` or custom deletion functions to manage arrays with shared pointers effectively.
Always ensure compatibility with your compiler and standard library implementation when dealing with array allocations and shared pointers in C++17.
~~~~

## Advantages of `std::make_shared()`

Similar to `std::make_unique()`, `std::make_shared()` offers benefits such as improved memory efficiency, exception safety, and readability.
It combines memory allocation for the control block and the managed object into a single operation, enhancing efficiency and reducing the risk of memory leaks.
Additionally, automatic deduction of template arguments simplifies code and enhances readability.
Using `std::make_shared()` promotes cleaner, safer, and more efficient code when working with `std::shared_ptr` objects in C++.

## Usage advice

Use smart pointers by default: `std::unique_ptr` for exclusive ownership and `std::shared_ptr` for shared ownership.
Reserve raw pointers for non-owning references or when interfacing with legacy code.
In most cases, `std::unique_ptr` is sufficient for exclusive ownership, as it offers lightweight memory management without the overhead of reference counting.
`std::shared_ptr` should be used sparingly, as it introduces overhead and complexity unless true shared ownership is needed.

## Instructions

This exercise takes you to the world of Troy.
The lives of its people are full of wonder and magic.
Many humans in Troy possess _powers_, that are used frequently in their daily lives.
Powers are used to re-shape the world or influence Troy's fauna and other people.
Magic also manifests in _unique artifacts_, that are highly sought after by adventurers, artisans and sages.

In this exercise you are going to write code to model the humans of Troy, their possessed artifacts and power interactions.

You have six tasks.
The first one is related to creating a human, the other five are about handling powers and artifacts.

## 1. Bring humans to the world of Troy

For your model of Troy, humans are the most important feature.
Your model human should be able to possess a _unique artifact_.
They should also have the ability to manifest a _power_.
These powers might affect other humans, so you also want to model if a human is influenced by some other power.

You are provided with basic implementations of `artifact` and `power` structs.
Implement a `human` struct (or class) that has a _smart-pointer_ to an `artifact` member variable named `possession`.
Each artifact can only be possessed by a single human at any given time.

A `human` must have two additional member variables.
One holds their `own_power` and the other is a power they are `influenced_by`.
Both `own_power` and `influenced_by` are _smart-pointers_ to `powers`.
Each `power` might be owned by a single human, but also influence other humans at the same time.

By default, humans are born without any artifact and neither own any powers nor are they influenced by them.

```cpp
human mindy_mccready{};
mindy_mccready.possession;
// => nullptr
mindy_mccready.own_power;
// => nullptr
mindy_mccready.influenced_by;
// => nullptr
```

## 2. Bring Artifacts into Troy

Your model is boring without the interaction of its parts.
You want to create unique artifacts and give them to certain humans.

Define the function `give_new_artifact` which returns nothing but takes a reference to a `human` and a `string`.
With the `string` it should define a new `artifact` object and set the `possession` pointer of the `human` accordingly.
The function should not return anything.

```cpp
human erik_magnus_lehnsherr{};
give_new_artifact(erik_magnus_lehnsherr, "Mind shielding helmet");

erik_magnus_lehnsherr.possession->name;
// "Mind shielding helmet"
```

## 3. Make items tradeable

The world of Troy is all about interaction.
You want people to make trades by exchanging their possessions.

Write a function `exchange_artifacts` that returns nothing but takes two artifact smart-pointers to exchange the items.
Remember, that you cannot copy a `unique_ptr`.
This includes the usage in function parameters.
Use a reference to the `unique_ptr` instead.

```cpp
human uchiha{};
give_new_artifact(uchiha, "konoha headband");
human uzumaki{};
give_new_artifact(uzumaki, "forehead protector");

exchange_artifacts(uchiha.possession, uzumaki.possession);

uchiha.possession->name;
// "forehead protector"
uzumaki.possession->name;
// "konoha headband"
```

## 4. Give Power to the People

The most exciting feature of Troy are the special powers that people might wield.
Some can smelt iron with their thoughts, while others can heal every wound instantly at nighttime.

Define the function `manifest_power` which returns nothing but takes a reference to a `human` and a `string`.
With the `string` it should define a new `power` object and set the `own_power` pointer of the `human` accordingly.
The function should not return anything.

```cpp
human eleven {};
manifest_power(eleven, "psychokinesis");

eleven.own_power->effect;
// "psychokinesis"
```

## 5. Use the Power

What use are the greatest powers, if you cannot use them.
Your model concentrates on humans, so you want to track the influence of powers.

Write a _void_ function `use_power` that takes two references to humans.
The first human is the caster and the second represents the target.
The target's `influenced_by` pointer should be pointed to the power of the caster.

For simplicity, humans can only be influenced by a single power.
This power stays in place even if the caster does not exist any longer.

```cpp
human pamela_isley{};
manifest_power(pamela_isley, "control pheromones");

human count_vertigo{};
use_power(pamela_isley, count_vertigo);
count_vertigo.influenced_by->effect;
// "control pheromones"
```

## 6. Keep watch on the power's intensity

Certain powers lose their potency or trigger certain effects in your simulation when they are applied to several humans.
You want to track the number of people who are connected to each power.

Define the function `power_intensity`, that takes a human and returns the intensity of their power as an _int_.
If the person has no power, the return value should be `0`.
Otherwise the intensity should reflect the caster and all currently influenced people.

```cpp
human jean_grey{};
manifest_power(jean_grey, "uplifting personality");

human scott{};
human logan{};
human ororo{};

use_power(jean_grey, ororo);
use_power(jean_grey, logan);
use_power(jean_grey, scott);

power_intensity(jean_grey);
// 4
```

## Source

### Created by

- @vaeng