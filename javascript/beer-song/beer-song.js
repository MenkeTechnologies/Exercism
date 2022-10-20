export const verse = (index) =>
  index === 0 ?
    [`No more bottles of beer on the wall, no more bottles of beer.`, `Go to the store and buy some more, 99 bottles of beer on the wall.`] :
    index === 1 ? [`1 bottle of beer on the wall, 1 bottle of beer.`, `Take it down and pass it around, no more bottles of beer on the wall.`] :
      [`${index} bottles of beer on the wall, ${index} bottles of beer.`, `Take one down and pass it around, ${index - 1} bottle${index - 1 > 1 ? "s" : ""} of beer on the wall.`]

export const recite = (initialBottlesCount = 99, takeDownCount= 0) =>
  [...Array(initialBottlesCount + 1 - takeDownCount).keys()].map(i => initialBottlesCount - i).map(i => verse(i))
