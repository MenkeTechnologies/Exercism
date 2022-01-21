import { recite } from './twelve-days';

describe('TwelveDays', () => {
  test('test verse first day a partridge in a pear tree', () => {
    const expectedVerseOne =
      'On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.\n';
    expect(recite(1)).toEqual(expectedVerseOne);
  });

<<<<<<< HEAD
  test('test verse second day two turtle doves', () => {
=======
  xtest('test verse second day two turtle doves', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    const expectedVerseTwo =
      'On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.\n';
    expect(recite(2)).toEqual(expectedVerseTwo);
  });

<<<<<<< HEAD
  test('test verse third day three french hens', () => {
=======
  xtest('test verse third day three french hens', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    const expectedVerseThree =
      'On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n';
    expect(recite(3)).toEqual(expectedVerseThree);
  });

<<<<<<< HEAD
  test('test verse fourth day four calling birds', () => {
=======
  xtest('test verse fourth day four calling birds', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    const expectedVerseFour =
      'On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n';
    expect(recite(4)).toEqual(expectedVerseFour);
  });

<<<<<<< HEAD
  test('test verse fifth day five gold rings', () => {
=======
  xtest('test verse fifth day five gold rings', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    const expectedVerseFive =
      'On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n';
    expect(recite(5)).toEqual(expectedVerseFive);
  });

<<<<<<< HEAD
  test('test verse sixth day six geese-a-laying', () => {
=======
  xtest('test verse sixth day six geese-a-laying', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    const expectedVerseSix =
      'On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n';
    expect(recite(6)).toEqual(expectedVerseSix);
  });

<<<<<<< HEAD
  test('test verse seventh day seven swans-a-swimming', () => {
=======
  xtest('test verse seventh day seven swans-a-swimming', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    const expectedVerseSeven =
      'On the seventh day of Christmas my true love gave to me: seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n';
    expect(recite(7)).toEqual(expectedVerseSeven);
  });

<<<<<<< HEAD
  test('test verse eighth day eight maids-a-milking', () => {
=======
  xtest('test verse eighth day eight maids-a-milking', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    const expectedVerseEight =
      'On the eighth day of Christmas my true love gave to me: eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n';
    expect(recite(8)).toEqual(expectedVerseEight);
  });

<<<<<<< HEAD
  test('test verse ninth day nine ladies dancing', () => {
=======
  xtest('test verse ninth day nine ladies dancing', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    const expectedVerseNine =
      'On the ninth day of Christmas my true love gave to me: nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n';
    expect(recite(9)).toEqual(expectedVerseNine);
  });

<<<<<<< HEAD
  test('test verse tenth day ten lords-a-leaping', () => {
=======
  xtest('test verse tenth day ten lords-a-leaping', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    const expectedVerseTen =
      'On the tenth day of Christmas my true love gave to me: ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n';
    expect(recite(10)).toEqual(expectedVerseTen);
  });

<<<<<<< HEAD
  test('test verse eleventh day eleven pipers piping', () => {
=======
  xtest('test verse eleventh day eleven pipers piping', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    const expectedVerseEleven =
      'On the eleventh day of Christmas my true love gave to me: eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n';
    expect(recite(11)).toEqual(expectedVerseEleven);
  });

<<<<<<< HEAD
  test('test verse twelfth day twelve drummers drumming', () => {
=======
  xtest('test verse twelfth day twelve drummers drumming', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    const expectedVerseTwelve =
      'On the twelfth day of Christmas my true love gave to me: twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n';
    expect(recite(12)).toEqual(expectedVerseTwelve);
  });

<<<<<<< HEAD
  test('test lyrics recites first three verses of the song', () => {
=======
  xtest('test lyrics recites first three verses of the song', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    const expectedVerseOneToThree =
      'On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.\n\n' +
      'On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
      'On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n';
    expect(recite(1, 3)).toEqual(expectedVerseOneToThree);
  });

<<<<<<< HEAD
  test('test lyrics recites three verses from the middle of the song', () => {
=======
  xtest('test lyrics recites three verses from the middle of the song', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    const expectedVerseFourToSix =
      'On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
      'On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
      'On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n';
    expect(recite(4, 6)).toEqual(expectedVerseFourToSix);
  });

<<<<<<< HEAD
  test('test lyrics recites the whole song', () => {
=======
  xtest('test lyrics recites the whole song', () => {
>>>>>>> c759d2b1af0c2bb9499a4789d0fc44e33579de66
    const expectedSong =
      'On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.\n\n' +
      'On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
      'On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
      'On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
      'On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
      'On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
      'On the seventh day of Christmas my true love gave to me: seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
      'On the eighth day of Christmas my true love gave to me: eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
      'On the ninth day of Christmas my true love gave to me: nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
      'On the tenth day of Christmas my true love gave to me: ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
      'On the eleventh day of Christmas my true love gave to me: eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
      'On the twelfth day of Christmas my true love gave to me: twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n';
    expect(recite(1, 12)).toEqual(expectedSong);
  });
});
