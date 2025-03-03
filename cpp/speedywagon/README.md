# Speedywagon Foundation

Welcome to Speedywagon Foundation on Exercism's C++ Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

Like many other languages, C++ has _pointers_.
You already know _references_ and _pointers_ are similar, but think of them as a level closer to the inner workings of your computer.
_Pointers_ are variables that hold object addresses.
They are used to directly interact with objects, enabling dynamic memory allocation and efficient data manipulation in C++.

If you're new to _pointers_, they can feel a little mysterious but once you get used to them, they're quite straight-forward.

They're a crucial part of C++, so take some time to really understand them.
The bare-bone version in this concept is also called _dumb pointer_ or _raw pointer_.
With modern C++ there are also _smart pointers_, the basic type is not smart at all and you have to handle all the work manually.

Before digging into the details, it's worth understanding the use of _pointers_.
_Pointers_ are a way to share an object's address with other parts of our program, which is useful for two major reasons:

1. Like _references_, pointers avoid copies and help to reduce the resource-footprint of your program.
1. Unlike _references_, pointers can be reassigned to different objects.
1. Pointers can also point to a null value, to indicate, that they currently do not point to any object.

## General Syntax

A pointer declaration in C++ involves specifying the data type to which the the pointer is pointing, followed by an asterisk (`*`) and the pointer's name.
When pointers are declared, they are not automatically initialized.
Without explicit assignment, a pointer typically holds an indeterminate value, often referred to as a "garbage address."
While certain compilers might initialize pointers to `nullptr`, this behavior is not guaranteed across all compilers, so it's essential not to rely on it.
It's best practice to explicitly initialize raw pointers and verify their non-null status before utilization to avoid potential issues.

```cpp
int* ptr{nullptr}; // Declares a pointer and makes sure it is not invalid
```

To assign the address of a variable to a pointer, you use the address-of operator (`&`).
Dereferencing a pointer is done using the _indirection operator_ (`*`) operator.

```cpp
std::string opponent{"Solomon Lane"};
// 'ethan' points to the address of the string opponent
std::string* ethan{&opponent}; 
// Instead of ethan's, the opponent's name address is given to the passPort
std::string passportName{*ethan};
```

Attention: dereferencing has to be done explicitly, while _references_ just worked like an alias.

## Pointer Arithmetic

_Pointer arithmetic_ allows you to perform arithmetic operations on pointers, which is particularly useful when working with arrays.
Adding an integer to a pointer makes it point to a different element.

```cpp
// Stargate Coordinate Code
int gateCode[] = {462, 753, 218, 611, 977};
// 'ptr' points to the first element of 'gateCode'
int* ptr{&gateCode[0]};
// Accesses the third Stargate address through pointer arithmetic
int dialedAddress{*(ptr + 2)}; 
// Chevron encoded! Dialing Stargate address:
openStarGate(dialedAddress);
```

~~~~exercism/caution
Pointer arithmetic in C++ can easily lead to __undefined behavior__ if not handled carefully.
Undefined behavior can manifest in unexpected program outcomes, crashes, or even security vulnerabilities.
One infamous example of the consequences of undefined behavior occurred in the [explosion of the Ariane 5 rocket][ariane-flight-v88] in 1996, where a software exception caused by the conversion of a 64-bit floating-point number to a 16-bit signed integer led to a catastrophic failure.
~~~~

## Accessing member variables

In C++, the `->` operator is used to access members of an object through a pointer to that object.
It is a shorthand which simplifies accessing members of objects pointed to by pointers.
For instance, if `ptr` is a pointer to an object with a member variable `x`, instead of using `(*ptr).x`, you can directly use `ptr->x`.
This operator enhances code readability and reduces verbosity when working with pointers to objects.

Here's a brief example, with a _struct_ `Superhero` that has a member variable `superpower`.
The main function creates a pointer `dianaPrince` to a `Superhero` object (representing Wonder Woman).
The `->` operator is used to access the member variable `superpower`, showcasing Wonder Woman's iconic "Lasso of Truth."

```cpp
struct Superhero {
    std::string superpower;
};
Superhero wonder_woman{};
Superhero* dianaPrince = &wonder_woman;
dianaPrince->superpower = "Lasso of Truth";
// Using the -> operator to access member variable superpower:
std::cout << "Wonder Woman, possesses the mighty " << dianaPrince->superpower;
// Memory cleanup:
delete dianaPrince; 
```

## Pointers vs. references

Pointers and references both enable indirect access to objects, but they differ in their capabilities and safety considerations.
Pointers offer the flexibility of changing their target object and can be assigned null.
However, this flexibility introduces risks, such as dereferencing null pointers or creating dangling pointers.
References, on the other hand, cannot be null and are bound to valid objects upon creation, avoiding these risks.
Given their safer nature, references should be preferred over pointers unless the additional functionalities provided by pointers are necessary.

## Instructions

Welcome, Engineer!
You are one of the last veterans of the Speedywagon Foundation, a secret organization that, for decades, has been battling ancient threats like the Pillar Men.
In the course of this effort, you've spent years maintaining the Foundation's technological systems, built using a mix of cutting-edge tech and aging libraries.

However, in recent times, the sensors that track Pillar Men activities are malfunctioning.
The Foundation's systems are old, and the code interacts with a legacy C++ library that cannot be updated.
Your task is to implement four core functions that monitor Pillar Men sensor activity using an old-fashioned pointer-based library.

As a modern C++ engineer, you’d prefer using smart pointers, but alas, legacy code demands respect for the old ways.
The fate of humanity may rest on these pointers, so proceed carefully, and may the Hamon energy guide you.

~~~~exercism/note
As sensor readings can be huge, we supply a mockup _struct_ that is used in the actual library.
The code has already been implemented in the header file for you.

```cpp
struct pillar_men_sensor {
    int activity{};
    std::string location{};
    std::vector<int> data{};
};
```
~~~~

## 1. Check Sensor Connection (`connection_check`)

Your first task is to ensure that the Pillar Men sensor is connected properly.
We can't have false alarms triggered by disconnected sensors.
You will write a function `connection_check`, which tests if the sensor's pointer is valid by checking for `nullptr`.

- Define a function that accepts a pointer to a `pillar_men_sensor` _struct_.
- The function should return `true` if the sensor pointer is not null, and `false` otherwise.

```cpp
pillar_men_sensor* sensor{nullptr};
bool isConnected = connection_check(sensor);
// isConnected => false
```

## 2. Count Activity of Sensors (`activity_counter`)

Pillar Men are lurking in the shadows, and we need to know if sensors have detected any activity.
You will write the `activity_counter` function, which takes in an array of sensors and a capacity indicating the number of sensors in the array.

- Define a function that accepts a pointer to the first element of an array and the arrays capacity.
- Use pointer arithmetic to loop through the sensor array and accumulate the activity readings.
- Return the accumulated activity.

```cpp
pillar_men_sensor sensor_array[3] = {{0}, {101}, {22}};
int totalActivity = activity_counter(sensor_array, 3);
// totalActivity => 123
```

## 3. Alarm Control (`alarm_control`)

Not every sensor should trigger an alarm unless there’s real danger.
The `alarm_control` function ensures that a sensor only triggers an alarm if its activity level is greater than 0.
This function should also check for null sensors to prevent system crashes.

- Define a function that accepts the pointer to a `pillar_men_sensor`.
- The function should first check for a `nullptr` sensor. If the sensor is `nullptr`, return `false`.
- If the sensor is valid and its activity is greater than 0, return `true`; otherwise, return `false`.

```cpp
pillar_men_sensor db{9008, "songokunoie", {7, 7, 7}};
bool alarm = alarm_control(&db);
// alarm => true
```

## 4. Checking the data for anomalies with the `uv_alarm` function

In this task, you will implement the `uv_alarm` function to determine whether an alarm should be triggered based on UV light exposure levels and sensor activity.
The `uv_alarm` function should use the provided `uv_light_heuristic` function, which operates on a vector of data and returns a value based on certain thresholds.
This is a mockup version of the complex code that will run during production, please don't change the interface.

Define the `uv_alarm` function in the `speedywagon` namespace. It should:

- Take a pointer to a `pillar_men_sensor` _struct_ as its parameter.
- Return `false` if the sensor pointer is null.
- Call the `uv_light_heuristic` function, passing the address of the sensor's `data` array.
- Return `true` if the value returned by `uv_light_heuristic` is greater than the `sensor->activity` level, otherwise return `false`.

## Source

### Created by

- @vaeng