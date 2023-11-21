# Foto Fusionist

Welcome to Foto Fusionist on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

Binary, octal, and hexadecimal (_also known as hex_) are different [numeral systems][numeral-systems] with different bases.
Binary is base 2, octal is base 8, and hexadecimal is base 16.
Normal integers are base 10 in Crystal.
Binary, octal, and hexadecimal are all representations of integers.
This means that they represent positive and negative numbers (_including zero_) without fractions or decimals and support all the operations that we can do with integers.

## Binary

[Binary][binary] is a base 2 numeral system, using only the digits 0 and 1.
It commonly represents the 0 ("off") and 1 ("on") states of electrical flow through transistors and switches in computers, as well as the positive and negative charges in magnetic storage media.
Binary can represent all the integers that are used in base 10.

A snippet from the base 2 system looks like this, although it continues infinitely and doesn't stop at 128:

| 128      | 64       | 32       | 16       | 8        | 4        | 2        | 1        |
| -------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- |
| 2 \*\* 7 | 2 \*\* 6 | 2 \*\* 5 | 2 \*\* 4 | 2 \*\* 3 | 2 \*\* 2 | 2 \*\* 1 | 2 \*\* 0 |

So if we want to represent the number 6, it would in binary be: 110

| Place value   | 4   | 2   | 1   |
| ------------- | --- | --- | --- |
| Binary number | 1   | 1   | 0   |

And the operation would be: `4 + 2 + 0 = 6`

Another example: 19

| Place value   | 16  | 8   | 4   | 2   | 1   |
| ------------- | --- | --- | --- | --- | --- |
| Binary number | 1   | 0   | 0   | 1   | 1   |

The binary number would be: 10011
And the operation would be: `16 + 0 + 0 + 2 + 1 = 19`

## Binary in Crystal

In Crystal, we can represent binary literals using the `0b` prefix.
If we write `0b10011`, Crystal will interpret it as a binary number and convert it to base 10.

```crystal
0b10011
# => 19

typeof(0b10011)
# => Int32
```

If you write a number with a `0b` prefix that is not in the binary system, it will raise a compilation error.

```crystal
0b10211
# => Error: unexpected token: "211"
```

### Operations with Binary Numbers

Since binary numbers are integers, we can perform all operations on them that we can with integers.

```crystal
0b10011 + 0b10011
# => 38

0b10011 * 0b10011
# => 361

0b10011 / 3
# => 6.333333333333333
```

### Converting to and from Binary Representation

Crystal will automatically convert a binary literal into `Int32`.
To convert an `Int32` into a binary representation, use the method [`<int>.to_s(base)`][to_s] with the base argument set to 2.
The method will return a string representation of the binary number:

```crystal
19.to_s(2)
# => "10011"
```

To convert a string representation of a binary to an integer, we can use the [`<int>.to_i(base)`][to_i] method, passing the base (2) as an argument:

```crystal
"10011".to_i(2)
# => 19
```

Giving the wrong base (_or an invalid binary representation_) will raise an `ArgumentError`:

```crystal
"011021".to_i(2)
# => Invalid Int32: "011021" (ArgumentError)
```

### Binary Methods

There are certain methods that can be used on integers to get information about the binary representation of the number.

[`<int>.bit_length`][bit_length] will return the number of bits that are needed to represent the number:

```crystal
19.bit_length
# => 5
```

[`<int>.bit(index)`][bit] will return the bit at the given index, starting from the right (_least significant bit_):

```crystal
19.bit(0)
# => 1

0b10011.bit(1)
# => 1
```

## Octal

[Octal][octal] is a base 8 numeral system.
It uses the digits 0, 1, 2, 3, 4, 5, 6, and 7.

In Crystal, we can represent octal numbers using the `0o` prefix.
As with binary, Crystal automatically converts an octal representation to an `Int32`.

```crystal
0o123
# => 83
```

Prefixing a number with `0o` that is not in the octal system will raise a compilation error.

### Converting to and from Octal Representation 

As with binary, we can use the [`<int>.to_s(base)`][to_s] method to convert an `Int32` into an octal representation.
And we can use the [`<int>.to_i(base)`][to_s] method to convert an octal representation into an `Int32`.

```crystal
83.to_s(8)
# => "123"

"123".to_i(8)
# => 83
```

As with binary, giving the wrong base will raise an `ArgumentError`.

## Hexadecimal

[Hexadecimal][hexadecimal] is a base 16 numeral system.
It uses the digits 0 - 9 and the letters A, B, C, D, E, and F.
A is 10, B is 11, C is 12, D is 13, E is 14, and F is 15.

We can represent hexadecimal numbers in Crystal using the `0x` prefix.
As with binary and octal, Crystal will automatically convert hexadecimal literals to `Int32`.

```crystal
#=> 0x123
291
```
 
Prefixing a non-hexadecimal number with `0x` will raise a compilation error.

###  Converting to and from Hexadecimal Representation

As with binary, we can use the [`<int>.to_s(base)`][to_i] method to convert an `Int32` into a hexadecimal representation.
And we can use the [`<int>.to_i(base)`][to_s] method to convert a hexadecimal representation into an `Int32`.

```crystal
291.to_s(16)
# => "123"

"123".to_i(16)
# => 291
```

As with binary and octal, giving the wrong base will raise an `ArgumentError`.

## Precision

When converting a number to a string representation, we can specify the precision of the number.
Meaning the **minimum** amount of numbers used to represent the number.
If the number has fewer digits than the precision, leading zeros will be added to the string representation.
This is done by passing the `precision` argument to the [`<int>.to_s(<base>, precision: <value>)`][to_s] method.

```crystal
291.to_s(16, precision: 5)
# => "00123"

543.to_s(precision: 2)
# => "543"
```

[binary]: https://en.wikipedia.org/wiki/Binary_number
[bit]: https://crystal-lang.org/api/Int.html#bit%28bit%29-instance-method
[bit_length]: https://crystal-lang.org/api/Int.html#bit_length%3AInt32-instance-method
[hexadecimal]: https://en.wikipedia.org/wiki/Hexadecimal
[numeral-systems]: https://en.wikipedia.org/wiki/Numeral_system
[octal]: https://en.wikipedia.org/w
[to_s]: https://crystal-lang.org/api/Int.html#to_s%28base%3AInt%3D10%2C%2A%2Cprecision%3AInt%3D1%2Cupcase%3ABool%3Dfalse%29%3AString-instance-method
[to_i]: https://crystal-lang.org/api/String.html#to_i%28base%3AInt%3D10%2Cwhitespace%3ABool%3Dtrue%2Cunderscore%3ABool%3Dfalse%2Cprefix%3ABool%3Dfalse%2Cstrict%3ABool%3Dtrue%2Cleading_zero_is_octal%3ABool%3Dfalse%29-instance-method

## Instructions

Your friend has gotten tired of paying for photo editing software and decided to write their own.
Your friend decided to call the new software for Foto Fusionist.

Foto Fusionist is a photo editing software that can do a lot of things, but you have only implemented a few of them so far.
However, your friend is very happy with the progress and has asked you to implement a few more features.

## 1. Convert binary representation to integer

For the first feature, your friend wants to be able to convert a binary representation of a number to an integer.
This is done because the software will be able to read the binary representation of a color channel and convert it to an integer.

Implement the method `FotoFusionist.binary_to_int` that takes an argument `binary` of type `String`.
The method should return the integer representation of the binary number.

```crystal
FotoFusionist.binary_to_int("10011")
# => 19
```

## 2. Get least significant bit from integer

The second feature your friend wants is to be able to get the [least significant bit][least-significant-bit] from an integer.
The least significant bit is the bit that is the furthest to the right.
It is called the least significant bit because it has the least value.

The least significant bit is needed to evaluate if an image can be optimized by reducing the number of bits used to represent the color channel.

Implement the method `FotoFusionist.least_significant_bit` that takes an argument `number` of type `Int32`.
The method should return the least significant bit of the number.

```crystal
FotoFusionist.least_significant_bit(0b10011)
# => 1

FotoFusionist.least_significant_bit(0b10010)
# => 0
```

## 3. Get hex value from color channel

The third feature your friend wants is to be able to get the hex value from a color channel.
The hex value is needed to be able to convert the color channel to a hex representation and the given hex representation needs to be made up of two digits.

Implement the method `FotoFusionist.hex_value` that takes an argument `number` of type `Int32`.
The method should return the hex value of the number as a `String`.

```crystal
FotoFusionist.hex_value(19)
# => "13"
```

## 4. Get hex value from RGB

The fourth feature your friend wants is to be able to get the hex value from a RGB color.
This is needed so a user can get a single string representation of a color.
An RGB color is a color that is represented by three color channels: red, green, and blue.
Each color channel is represented by a number between 0 and 255.

The hex value of a RGB color is a string representation of the color in hexadecimal with the red color channel first, then the green color channel, and lastly the blue color channel.

Implement the method `FotoFusionist.hex_value_from_rgb` that takes three arguments: `red`, `green`, and `blue` of type `Int32`.
The method should return the hex value of the RGB color as a `String`.

```crystal
FotoFusionist.hex_value_from_rgb(255, 0, 0)
# => "ff0000"
```

[least-significant-bit]: https://en.wikipedia.org/wiki/Least_significant_bit

## Source

### Created by

- @meatball133

### Contributed to by

- @ryanplusplus