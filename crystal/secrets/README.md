# Secrets

Welcome to Secrets on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

Crystal has bitwise operators for manipulating [`Int`][ints] at the binary level.

## Shift operators 

Crystal has [shift operators][shift] for shifting bits to the left (`<<`) or the right (`>>`).

### Shift left(`<<`)

The shift left operator (`<<`) shifts the bits to the left.
The value to shift is specified on the left side and the number of places to shift is on the right.

```crystal
0b0010 << 1
# => 0b0100

0b0010 << 2
# => 0b1000
```

If the number is negative, it will shift to the right instead.

```crystal
0b0010 << -1
# => 0b0001
```

### Shift right(`>>`)

The shift right operator (`>>`) shifts the bits to the right.
Like the shift left operator, the value to shift is specified on the left and number of places to shift is on the right.

```crystal
0b0100 >> 1
# => 0b0010

0b0100 >> 2
# => 0b0001
```

And similarly, the operator will shift to the left if the number is negative.

```crystal
0b0100 >> -1
# => 0b1000
```

## Binary operators

Crystal has 3 [binary operators][binary] (`&`, `|`, `^`) and a `~` operator for performing bitwise operations.

### Bitwise AND(`&`)

The binary AND operator (`&`) performs a bitwise AND on two values.
It compares each bit in the first value against the bit in the same position in the second value.
The resulting bit is set to 1 if both bits are 1.
Otherwise, it is set to 0.

```crystal
0b0011 & 0b1010
# => 0b0010
```

### Bitwise OR(`|`)

The binary OR operator (`|`) performs a bitwise OR on two values.
It also compares each bit in the first value against the bit in the same position in the second value.
If either bit is 1, the resulting bit is set 1.
Otherwise, it is set to 0.

```crystal
0b0011 | 0b1010
# => 0b1011
```

### Bitwise XOR(`^`)

The binary XOR operator (`^`) performs a bitwise XOR.
Like the bitwise AND and bitwise OR operators, it compares each bit from the first value against the bit in the same position in the second value.
If _only one_ of them is 1, the resulting bit is 1.
Otherwise, it is 0.

```crystal
0b0011 ^ 0b1010
# => 0b1001
```

### Bitwise NOT(`~`)

Lastly, the bitwise NOT operator (`~`) flips each of the value's bits. 
Unlike the other binary operators, this is a unary operator, operating on only on the value to the right.

```crystal
~0b1110_0010
# => 0b0001_1101
```

[ints]: https://crystal-lang.org/api/Int.html
[shift]: https://crystal-lang.org/reference/syntax_and_semantics/operators.html#shifts
[binary]: https://crystal-lang.org/reference/syntax_and_semantics/operators.html#binary

## Instructions

Your has just sent you a message with an important secret.
Not wanting to make it easy for others to read it, the message has been encrypted using a series of bit manipulations.
You will need to write a program to help decrypt the message.

## 1. Shift back the bits

The first step in decrypting the message is to undo the shifting from the encryption process by shifting the bits back to the left.
The number of places to shift can vary between messages.

Implement the method `Secrets.shift_back` that takes a value and the number of places to shift left.

```crystal
Secrets.shift_back(0b0001, 2)
# => 0b0100
```

## 2. Apply a bit mask

The next step is apply a bit mask to extract the value of certain bits.
The mask is applied by performing a bitwise AND between the value and the mask.

Implement the method `Secrets.apply_mask` that takes a value and applies a mask.

```crystal
Secrets.apply_mask(0b0110, 0b0101)
# => 0b0100
```

## 3. Set some bits

Shifting bits to the left has added some new 0 bits.
Some of these new bits need to be set to 1.
The bitwise OR is useful for setting certain bits to 1 while preserving the rest.

Implement the method `Secrets.set_bits` that takes two values and performs a bitwise OR.

```crystal
Secrets.set_bits(0b0110, 0b0101)
# => 0b111
```

## 4. Reverse XOR

Part of the encryption process applies a XOR with an agreed value.
To get back to the original value, the encrypted value can simply be XOR again with the agreed value.
However, due to a misunderstanding, your friend flipped the agreed value's bits (i.e. applied a bitwise NOT to the agreed value) before applying the XOR. 

Implement the `Secrets.reverse_xor` method that takes the encrypted and agreed values and calculates the original value.

```crystal
Secrets.reverse_xor(0b1100, 0b0101)
# => 0b(0110)
```

## Source

### Created by

- @kahgoh