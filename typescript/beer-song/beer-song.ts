export const verse = (index: number): string =>
    index === 0 ?
    `No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n` :
    index === 1 ? `1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n` :
    `${index} bottles of beer on the wall, ${index} bottles of beer.\nTake one down and pass it around, ${index - 1} bottle${index - 1 > 1 ? "s" : ""} of beer on the wall.\n`

export const sing = (start: number = 99, end: number = 0): string =>
    [...Array(start + 1 - end).keys()].map(i => verse(start - i)).join("\n")
