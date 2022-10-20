export const verse = (index: number): string =>
    index === 0 ?
    `No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n` :
    index === 1 ? `1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n` :
    `${index} bottles of beer on the wall, ${index} bottles of beer.\nTake one down and pass it around, ${index - 1} bottle${index - 1 > 1 ? "s" : ""} of beer on the wall.\n`

export const sing = (initialBottlesCount: number = 99, takeDownCount: number = 0): string =>
    [...Array(initialBottlesCount + 1 - takeDownCount).keys()].map(i => verse(initialBottlesCount - i)).join("\n")
