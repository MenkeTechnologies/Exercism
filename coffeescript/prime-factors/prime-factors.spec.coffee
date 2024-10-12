PrimeFactors = require './prime-factors'

describe 'Prime Factors', ->
  it 'no factors', ->
      expect(PrimeFactors.factors 1).toEqual []

  it 'prime number', ->
      expect(PrimeFactors.factors 2).toEqual [2]
  
  it 'another prime number', ->
      expect(PrimeFactors.factors 3).toEqual [3]

  it 'square of a prime', ->
      expect(PrimeFactors.factors 9).toEqual [3, 3]

  it 'product of first prime', ->
      expect(PrimeFactors.factors 4).toEqual [2, 2]

  it 'cube of a prime', ->
      expect(PrimeFactors.factors 8).toEqual [2, 2, 2]

  it 'product of second prime', ->
      expect(PrimeFactors.factors 27).toEqual [3, 3, 3]

  it 'product of third prime', ->
      expect(PrimeFactors.factors 625).toEqual [5, 5, 5, 5]
  
  it 'product of first and second prime', ->
      expect(PrimeFactors.factors 6).toEqual [2, 3]

  it 'product of primes and non-primes', ->
      expect(PrimeFactors.factors 12).toEqual [2, 2, 3]

  it 'product of primes', ->
      expect(PrimeFactors.factors 901255).toEqual [5, 17, 23, 461]

  it 'factors include a large prime', ->
      expect(PrimeFactors.factors 93819012551).toEqual [11, 9539, 894119]
