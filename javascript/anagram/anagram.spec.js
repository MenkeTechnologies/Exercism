import { findAnagrams } from './anagram';

describe('Anagram', () => {
  test('no matches', () => {
    expect(
      findAnagrams('diaper', ['hello', 'world', 'zombies', 'pants'])
    ).toEqual([]);
  });

<<<<<<< HEAD
  test('detects two anagrams', () => {
=======
  xtest('detects two anagrams', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    expect(findAnagrams('master', ['stream', 'pigeon', 'maters'])).toEqual([
      'stream',
      'maters',
    ]);
  });

<<<<<<< HEAD
  test('does not detect anagram subsets', () => {
    expect(findAnagrams('good', ['dog', 'goody'])).toEqual([]);
  });

  test('detects anagram', () => {
=======
  xtest('does not detect anagram subsets', () => {
    expect(findAnagrams('good', ['dog', 'goody'])).toEqual([]);
  });

  xtest('detects anagram', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    expect(
      findAnagrams('listen', ['enlists', 'google', 'inlets', 'banana'])
    ).toEqual(['inlets']);
  });

<<<<<<< HEAD
  test('detects three anagrams', () => {
=======
  xtest('detects three anagrams', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    expect(
      findAnagrams('allergy', [
        'gallery',
        'ballerina',
        'regally',
        'clergy',
        'largely',
        'leading',
      ])
    ).toEqual(['gallery', 'regally', 'largely']);
  });

<<<<<<< HEAD
  test('detects multiple anagrams with different case', () => {
    expect(findAnagrams('nose', ['Eons', 'ONES'])).toEqual(['Eons', 'ONES']);
  });

  test('does not detect non-anagrams with identical checksum', () => {
    expect(findAnagrams('mass', ['last'])).toEqual([]);
  });

  test('detects anagrams case-insensitively', () => {
=======
  xtest('detects multiple anagrams with different case', () => {
    expect(findAnagrams('nose', ['Eons', 'ONES'])).toEqual(['Eons', 'ONES']);
  });

  xtest('does not detect non-anagrams with identical checksum', () => {
    expect(findAnagrams('mass', ['last'])).toEqual([]);
  });

  xtest('detects anagrams case-insensitively', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    expect(
      findAnagrams('Orchestra', ['cashregister', 'Carthorse', 'radishes'])
    ).toEqual(['Carthorse']);
  });

<<<<<<< HEAD
  test('detects anagrams using case-insensitive subject', () => {
=======
  xtest('detects anagrams using case-insensitive subject', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    expect(
      findAnagrams('Orchestra', ['cashregister', 'carthorse', 'radishes'])
    ).toEqual(['carthorse']);
  });

<<<<<<< HEAD
  test('detects anagrams using case-insensitive possible matches', () => {
=======
  xtest('detects anagrams using case-insensitive possible matches', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    expect(
      findAnagrams('orchestra', ['cashregister', 'Carthorse', 'radishes'])
    ).toEqual(['Carthorse']);
  });

<<<<<<< HEAD
  test('does not detect an anagram if the original word is repeated', () => {
    expect(findAnagrams('go', ['go Go GO'])).toEqual([]);
  });

  test('anagrams must use all letters exactly once', () => {
    expect(findAnagrams('tapper', ['patter'])).toEqual([]);
  });

  test('words are not anagrams of themselves (case-insensitive)', () => {
    expect(findAnagrams('BANANA', ['BANANA', 'Banana', 'banana'])).toEqual([]);
  });

  test('words other than themselves can be anagrams', () => {
=======
  xtest('does not detect an anagram if the original word is repeated', () => {
    expect(findAnagrams('go', ['go Go GO'])).toEqual([]);
  });

  xtest('anagrams must use all letters exactly once', () => {
    expect(findAnagrams('tapper', ['patter'])).toEqual([]);
  });

  xtest('words are not anagrams of themselves (case-insensitive)', () => {
    expect(findAnagrams('BANANA', ['BANANA', 'Banana', 'banana'])).toEqual([]);
  });

  xtest('words other than themselves can be anagrams', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    expect(findAnagrams('LISTEN', ['Listen', 'Silent', 'LISTEN'])).toEqual([
      'Silent',
    ]);
  });
});
