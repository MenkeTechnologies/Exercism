# Hints

## 1. Convert binary representation to integer

- There is a [built-in method][string-to_i] to convert a string with a binary representation to an integer given the base.

## 2. Get least significant bit from integer

- There is a [built-in method][integer-bit] to get a bit from an integer given an index.
- The least significant bit is the bit that is the furthest to the right.
  It is placed at index 0.

## 3. Get hex value from color channel

- There is a [built-in method][integer-to_s] to convert an integer to a string with a hexadecimal representation given the base.
- The method can take an optional argument to specify the precision of the number of digits generated.

## 4. Get hex value from RGB

- You can use already-defined methods to get the hex value from a color channel.

[string-to_i]: https://crystal-lang.org/api/String.html#to_i%28base%3AInt%3D10%2Cwhitespace%3ABool%3Dtrue%2Cunderscore%3ABool%3Dfalse%2Cprefix%3ABool%3Dfalse%2Cstrict%3ABool%3Dtrue%2Cleading_zero_is_octal%3ABool%3Dfalse%29-instance-method
[integer-bit]: https://crystal-lang.org/api/Int.html#bit%28bit%29-instance-method
[integer-to_s]: https://crystal-lang.org/api/Int.html#to_s%28base%3AInt%3D10%2C%2A%2Cprecision%3AInt%3D1%2Cupcase%3ABool%3Dfalse%29%3AString-instance-method