# lasagna-master

Welcome to lasagna-master on Exercism's C++ Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

## Terminology

You have already used and written C++ functions in a couple of concepts.
It is time to get technical.
The code snippet below shows the most common terms for easy reference.
As C++ ignores whitespace, the formatting has been changed to put each element on a single line.

```cpp
// Function declaration:
bool                                              // Return type
admin_detected(string user, string password)      // Type signature
;                                                 // Don't forget the ';' for the declaration

// Function definition:
bool                                              // Return type
admin_detected                                    // Function name
(string user, string password)                    // Parameter list
{ return user == "admin" && password == "1234"; } // Function body
```
~~~~exercism/advanced
The declaration works like a note to the compiler, that there is a function of that name, return type and parameter list.
The code will not work, if the definition is missing.
Declarations are optional, they are needed if you use the function before its definition.
Declarations can solve problems like cyclic references and they can be used to separate the interface from the implementation.
~~~~

## The const qualifier

Sometimes you want to make sure that values cannot be changed after they have been initialized.
C++ uses the `const` keyword as a qualifier for constants.

```cpp
const int number_of_dragon_balls{7};
number_of_dragon_balls--; // compilation error
```

~~~~exercism/note
You will often see constants written in _UPPER_SNAKE_CASE_.
It is recommended to reserve this casing for macros, if there is no other convention.
~~~~

If you try to change a constant variable after it has been set, your code will not compile.
This helps to avoid unintended changes but also opens up optimization possibilities for the compiler.
As a human, it is also easier to reason about the code, if you know that certain parts will not be affected.

You can also have `const` as a qualifier for function parameters.

```cpp
string guess_number(const int& secret, const int& guess) {
    if (secret < guess) return "lower.";
    if (secret > guess) return "higher.";
    return "exact!";
}
```

When you pass a `const` reference to the function, you can be sure that it will be left unchanged.
You will often see `const` references for objects that might be costly to copy, like longer strings.
A third use-case for the `const` qualifier are member functions that do not change the instance of a class.

```cpp
class Stubborn {
    public:
    Stubborn(string reply) {
        response = reply;
    }
    string answer(const string& question) const {
        if (question.length() == 0) { return ""; }
        return response;
    }
    private:
    string response{};
};
```

The `Stubborn` member function `answer` uses a `const string&` reference as a parameter.
This avoids a copy operation from the original object that was passed to the function.

## Function overloading

Multiple functions can have the same name if the parameter list is different.
That is called function overloading and it is usually done if these functions perform very similar tasks.

The function header without the return type is the function's __type signature__.
A change in the type signature results in a new function.

The `play_sound` example has six different overloads to accommodate different scenarios:

```cpp
// different argument types:
void play_sound(char note);         // C, D, E, ..., B
void play_sound(string solfege);    // do, re, mi, ..., ti
void play_sound(int jianpu);        // 1, 2, 3, ..., 7

// different number of arguments:
void play_sound(string solfege, double duration);

// different qualifiers:
void play_sound(vector<string>& solfege);
void play_sound(const vector<string>& solfege);
```

~~~~exercism/advanced
The type signature is defined by the function's name, the number of parameters, their types, and their qualifiers (but not their names).
The return type is explicitly not part of the type signature and you will get compilation errors if you have two functions that only differ in their return type.
The compiler will complain because it is not clear which of the two should be used.
~~~~

## Default arguments

Some functions can get very lengthy and many of its calls might use the same values for most of the parameters.
The repetition in those calls can be avoided with default arguments.

```cpp
void record_new_horse_birth(string name, int weight, string color="brown-ish", string dam="Alruccaba", string sire="Poseidon");

record_new_horse_birth("Urban Sea", 130); // color will be brown, dam "Alruccabam", sire "Poseidon"
record_new_horse_birth("Highclere", 175, "off-white", "Fall Aspen");   // sire will be "Poseidon"
```

As the function declaration is often read before the definition, it is the better place to set the default arguments.
If one parameter has a default declaration, all the parameters to its right need a default declaration as well.
Sometimes complicated function overloads can be refactored to fewer functions with default arguments to improve maintainability.

## Instructions

In this exercise you are going to write some more code related to preparing and cooking your brilliant lasagna from your favorite cookbook.

You have five tasks.
The first one is related to the cooking itself, the other four are about the perfect preparation.

## 1. Estimate the preparation time

For the next lasagna that you will prepare, you want to make sure you have enough time reserved so you can enjoy the cooking.
You already planned which layers your lasagna will have.
Now you want to estimate how long the preparation will take based on that.

Implement a function `preparationTime` that accepts a vector of layers as `string` and the average preparation time per layer in minutes as an `int`.
The function should return the estimate for the total preparation time based on the number of layers as an `int`.
If the average preparation time is not passed then the default value of `2` should be used.

```cpp
std::vector<std::string> layers{"sauce", "noodles", "sauce", "meat", "mozzarella", "noodles"};
preparationTime(layers, 3)
// => 18
preparationTime(layers)
// => 12
```

## 2. Compute the amounts of noodles and sauce needed

Besides reserving the time, you also want to make sure you have enough sauce and noodles to cook the lasagna of your dreams.
For each noodle layer in your lasagna, you will need 50 grams of noodles.
For each sauce layer in your lasagna, you will need 0.2 liters of sauce.

Define the function `quantities` that takes a vector of layers as parameter as `string`.
The function will then determine the quantity of noodles and sauce needed to make your meal.
The result should be returned as an `amount` _struct_, which is already  defined for you.
`amount` has two member variables one for the weight of the `noodles` as an `int` and the second one as the volume of the `sauce` as a `double`.

```cpp
struct amount { int noodles; double sauce; };

amount needed{quantities({"sauce", "noodles", "sauce", "meat", "mozzarella", "noodles"})};
// needed.noodles => 100
// needed.sauce => 0.4
```

## 3. Add the secret ingredient

A while ago you visited a friend and ate lasagna there.
It was amazing and had something special to it.
The friend sent you the list of ingredients and told you the last item on the list is the "secret ingredient" that made the meal so special.
Now you want to add that secret ingredient to your recipe as well.

Write a function `addSecretIngredient` that accepts two `vector of strings` as parameters.
The first parameter is a _reference_ to the ingredients of your own recipe, and the second _vector_ of strings has the ingredients your friend sent you.
The last element in your ingredient list is always `"?"`.
The function should replace it with the last item from your friends list.
**Note:** `addSecretIngredient` does not return anything - you should modify the list of your ingredients directly.
The list with your friend's ingredients can also be a reference (for improving the performance), but it should **not** be modified.
Make sure the list will not be modified with a `const` reference.

```cpp
std::vector<std::string> friendsList{"noodles", "sauce", "mozzarella", "kampot pepper"};
std::vector<std::string> myList{"noodles", "meat", "sauce", "mozzarella", "?"};

addSecretIngredient(myList, friendsList);
// myList => {"noodles", "meat", "sauce", "mozzarella", "kampot pepper"}
```

## 4. Scale the recipe

The amounts listed in your cookbook only yield enough lasagna for two portions.
Since you want to cook for more people next time, you want to calculate the amounts for different numbers of portions.

Implement a function `scaleRecipe` that takes two parameters.

- A vector of `double` amounts needed for 2 portions.
- The number of portions you want to cook.

The function should return a new vector of the amounts needed for the desired number of portions.
You want to keep the original recipe though.
This means the `quantities` argument should not be modified in this function.

```cpp
std::vector<double> quantities{1.2, 3.6, 10.5};
scaleRecipe(quantities, 4);
// => { 2.4, 7.2, 21 }
```

## 5. Unlock the Family Secret

You remember stories from your childhood, tales of your great-grand auntie, the guardian of the family's deepest culinary secrets.
Legend has it that she holds the key to unlocking flavors beyond imagination, but her methods are unconventional.
She doesn't deal in lists or measurements; she speaks in whispers, revealing only one ingredient at a time.

With a mixture of excitement and trepidation, you decide to reach out to your great-grand auntie.
As expected, she responds in her cryptic manner, offering a single secret ingredient, wrapped in mystery.

Your great-grand auntie's contribution adds a layer of complexity, that you want to use in your recipe.
Implement another version of the `addSecretIngredient` function that accepts two arguments: a reference to a vector representing your list of ingredients and a single string representing the enigmatic offering from your great-grand auntie.

```cpp
std::vector<std::string> myList{"noodles", "meat", "sauce", "mozzarella", "?"};
std::string secretIngredient{"spice melange"};
addSecretIngredient(myList, secretIngredient);
// myList => {"noodles", "meat", "sauce", "mozzarella", "spice melange"}
```

Good luck, brave chef!

## Source

### Created by

- @vaeng