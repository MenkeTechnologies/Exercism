export const verse = i =>
  i === 0 ?
    [`No more bottles of beer on the wall, no more bottles of beer.`, `Go to the store and buy some more, 99 bottles of beer on the wall.`, ''] :
    i === 1 ? [`1 bottle of beer on the wall, 1 bottle of beer.`, `Take it down and pass it around, no more bottles of beer on the wall.`, ''] :
      [`${i} bottles of beer on the wall, ${i} bottles of beer.`, `Take one down and pass it around, ${i - 1} bottle${i - 1 > 1 ? "s" : ""} of beer on the wall.`, '']

export const recite = (initialBottlesCount = 99, takeDownCount= 0) => [...Array(takeDownCount).keys()].flatMap(i => verse(initialBottlesCount - i)).slice(0, -1)
