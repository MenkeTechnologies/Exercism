PerfectNumbers = require './perfect-numbers'

describe 'Perfect Numbers', ->
  describe 'Perfect numbers', ->
    it 'Smallest perfect number is classified correctly', ->
      expect(PerfectNumbers.classify(6)).toEqual 'perfect'

    it 'Medium perfect number is classified correctly', ->
      expect(PerfectNumbers.classify(28)).toEqual 'perfect'

    it 'Large perfect number is classified correctly', ->
      expect(PerfectNumbers.classify(33550336)).toEqual 'perfect'

  describe 'Abundant numbers', ->
    it 'Smallest abundant number is classified correctly', ->
      expect(PerfectNumbers.classify(12)).toEqual 'abundant'

    it 'Medium abundant number is classified correctly', ->
      expect(PerfectNumbers.classify(30)).toEqual 'abundant'

    it 'Large abundant number is classified correctly', ->
      expect(PerfectNumbers.classify(33550335)).toEqual 'abundant'

  describe 'Deficient numbers', ->
    it 'Smallest prime deficient number is classified correctly', ->
      expect(PerfectNumbers.classify(2)).toEqual 'deficient'

    it 'Smallest non-prime deficient number is classified correctly', ->
      expect(PerfectNumbers.classify(4)).toEqual 'deficient'

    it 'Medium deficient number is classified correctly', ->
      expect(PerfectNumbers.classify(32)).toEqual 'deficient'

    it 'Large deficient number is classified correctly', ->
      expect(PerfectNumbers.classify(33550337)).toEqual 'deficient'

    it 'Edge case (no factors other than itself) is classified correctly', ->
      expect(PerfectNumbers.classify(1)).toEqual 'deficient'
    
  describe 'Invalid inputs', ->
    it 'Zero is rejected (as it is not a positive integer)', ->
      expect ->
        PerfectNumbers.classify(0)
      .toThrow new Error('Classification is only possible for positive integers.')
    
    it 'Negative integer is rejected (as it is not a positive integer)', ->
      expect ->
        PerfectNumbers.classify(-1)
      .toThrow new Error('Classification is only possible for positive integers.')
