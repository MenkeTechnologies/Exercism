# Doctor Data

Welcome to Doctor Data on Exercism's C++ Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

In C++, declarations are often separated from definitions.
Declarations are grouped into so-called header files, with the respective implementations placed in source files.
You can think of the header files as an API.
The header file will tell you _what_ a codebase has to offer without going into the details of _how_.

## Header and Source

The most common file extension for header files is `.h`.
Some projects use `.hpp` or skip the extension completely.

The definitions are located in a separate `.cpp` file. 
To reunite the parts, the source file starts by _including_ the respective header file.

If you want to write a library called "quick_math" that offers a function "super_root" that you want to use often, the files would look like this:

```cpp
// A file named quick_math.h
#pragma once
namespace quick_math {
    double super_root(double x, int n);
}
```

```cpp
// A file named quick_math.cpp
#include "quick_math.h"
#include <cmath>
double quick_math::super_root(double x, int n) {
    while(n) { x = std::sqrt(x), --n;}
    return x;
}
```

If you need to include a header that is only required by the implementation, the respective `#include` line is only needed in the source file.
Everything that is included in the header is also available in the `.cpp` file, like the `string` library in the example below.
**Attention**: the `;` is needed after the declaration in the header file, but not after the definition in the source file.

~~~~exercism/note
Many C++ exercises on Exercism start with two almost empty files: header and source.
You have to check the `*_test.cpp` file to see the names and namespaces of the expected functions in order to solve the exercise.
~~~~

## Classes and Headers

Classes can become very complex and their relation to the header / source partition might be confusing.
One possible layout is to keep all the implementation details in the source file and all the declarations and member variables in the header:

```cpp
// A file named robot_flower.h
#if !defined(ROBOT_FLOWER_H)
#define ROBOT_FLOWER_H
#include <string>
namespace robots {
    class Flower {
        private:
            bool needs_water{};
            int size{};
            std::string name{};
        public:
            Flower(std::string name, int size = 0);
            void give_water();
            std::string get_name();
            int get_size();
            void start_next_day();
    };
}
#endif
```

```cpp
// A file named robot_flower.cpp
#include "robot_flower.h"
robots::Flower::Flower(std::string name, int size) {this->name = "Robotica " + name; this->size = size;}
void robots::Flower::start_next_day() {if (!needs_water) ++size; needs_water = true;}
std::string robots::Flower::get_name() {return name;}
int robots::Flower::get_size() {return size;}
```

When the header is used as an API overview, that is where a person would look for information like default values.
The `size` parameter's default of the constructor is therefore handled in the header and not in the implementation.
The definitions in the source file are prefixed with the namespace `robots` and the class type `Flower`.
 
Another layout option is a _header only_ library, that does not have a `.cpp` file at all:

```cpp
// A file named robot_flower.h
#pragma once
#include <string>
namespace robots {
    class Flower {
        private:
            bool needs_water{};
            int size{};
            std::string name{};
        public:
            Flower(std::string name, int size = 0) {this->name = "Robotica " + name; this->size = size;}
            void give_water() {needs_water = false;}
            std::string get_name() {return name;}
            int get_size() {return size;}
            void start_next_day() {if (!needs_water) ++size; needs_water = true;}
    };
}
```

Projects might use combinations of these layouts and there is a lot of discussion as to what might be the best fit for each use case.

## Include Guards

You may have noticed the `#pragma once` line in the example header file above.
This is called an include guard - and it ensures that the content of the file is included only once during the compilation to avoid errors.
There is another, more complex variation of an include guard that starts with `#ifndef` and ends with `#endif`.
It serves the same purpose and its usage is shown in the `Flower` class example above.

## Instructions

You start your first day at an Australian company called "Doctor Data", which specializes in information recovery.
You aced your job interview through your knowledge of C++ and [von Neumann probes][van-neumann-probes].
As you have seen a lot of test files, your new boss wants you to recreate the respective source and header files from some test code the company has recently recovered.

In this exercise, you are going to recreate lost files.
Currently the content of the files is unusable garbage data.

~~~~exercism/note
The workflow of this concept exercise is very similar to the structure of Exercism's practice exercises.
The exercise introduction text is only one part of the specification.
The test file is your definitive guide to solving a given problem.
Due to the way C++ compilation works, the test results might not show up in the web interface until you have implemented a minimal version of every class, function and enumeration that is required by the tests.
If you receive compilation errors, they might disappear once you have addressed all tasks and tests.
~~~~

You have four tasks, all related to recovering the lost code in the header and source files.

## 1. Try to extract some first clues

You look at two recovered lines from the test files:

```cpp
heaven::Vessel bob{"Robert Johansson", 1};
heaven::Vessel will{"Riker", 2, star_map::System::BetaHydri};
```

Your sharp eye instantly recognized a namespace `heaven`.
You also see that there must be a class called `Vessel`.
The constructor can apparently be called with two or three arguments.
The first argument seems to be of type `string`, the second one is a number.
It is possible to initialize the `Vessel` class with a third argument.
The third argument comes from a `star_map` namespace.
It is an enumerator of type `System`.
You even got one of the enumerations: `BetaHydri`.

Prepare the source and header files with your discovered information.
You need two namespaces: `heaven` and `star_map`.
The `heaven` namespace has a class `Vessel`, which can be called with two or three arguments.
The `System` enum is to be placed in the `star_map` namespace and has an `EpsilonEridani` enumeration.
Keep an eye out for other enumerations, so that you can constantly update the `System` enum.

## 2. Find more details

You uncover more lines from the test:

```cpp
heaven::Vessel bob{"Robert Johansson", 1};
REQUIRE(bob.current_system == star_map::System::Sol);
REQUIRE(bob.generation == 1);
heaven::Vessel bob5 = bob.replicate("Mario");
REQUIRE(bob5.current_system == star_map::System::Sol);
REQUIRE(bob5.generation == 2);
```

The newly found test lines uncover another member function of the `Vessel` class: `replicate`.
This function receives a string and returns another `Vessel` instance.
You get an idea about the default value of the third argument of the constructor from the previous task.
You also see two public member variables of the `Vessel` class and the specification of the `replicate` member function.

Add the `replicate` function and the public member variables `current_system` and `generation` to the header and source files.

## 3. Look into the inner workings

You find some more interesting lines in the recovered test files:

```cpp
heaven::Vessel bob6{"Homer", 3, star_map::System::EpsilonEridani};
REQUIRE(bob6.busters == 0);
bob6.make_buster();
REQUIRE(bob6.busters == 1);
bool success = bob6.shoot_buster();
REQUIRE(success);
REQUIRE(bob6.busters == 0);
success = bob6.shoot_buster();
REQUIRE_FALSE(success);
```

Apparently, the `Vessel` class has a member variable `busters`, that can be changed with the two class member functions `make_buster` and `shoot_buster`.
Until other information surfaces, you take a guess that the `make_buster` function returns `void`.
As there is a test for the return value of `shoot_buster`, you assume that the function returns a `bool`.

Add the two functions and the member variable to the `Vessel` class.
Keep looking for other `System` enumerators.

## 4. Complete the picture

During your scan of the test files you find only two uncovered sections of the code:

```cpp
heaven::Vessel bob1{"Bob", 1, star_map::System::AlphaCentauri};
heaven::Vessel marv{"Marvin", 2, star_map::System::DeltaEridani};
heaven::Vessel milo{"Milo", 3, star_map::System::DeltaEridani};
heaven::Vessel howie{"Howard", 4, star_map::System::Omicron2Eridani};

REQUIRE("Bob" == heaven::get_older_bob(bob1, marv));
REQUIRE(heaven::in_the_same_system(marv, milo));
REQUIRE_FALSE(heaven::in_the_same_system(marv, howie));
```

You see two functions, that are not members of the `Vessel` class, as they are not called with an instance.
`get_older_bob` compares two `Vessel`instances and returns a `string`.
`in_the_same_system` compares two `Vessel`instances and returns a `bool`.

Implement the last missing functions from the recovered lines above.

[van-neumann-probes]: https://en.wikipedia.org/wiki/Self-replicating_spacecraft

## Source

### Created by

- @vaeng