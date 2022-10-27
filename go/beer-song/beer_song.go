package beer

import (
	"errors"
	"fmt"
)

var verses = [3]string{
	"No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n",
	"1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n",
	"%d bottles of beer on the wall, %d bottles of beer.\nTake one down and pass it around, %d bottle%s of beer on the wall.\n",
}

func Verse(i int) (verse string, err error) {
	switch {
	case i == 0, i == 1:
		verse = verses[i]
	case i == 2:
		verse = fmt.Sprintf(verses[2], i, i, i-1, "")
	case i > 2 && i < 100:
		verse = fmt.Sprintf(verses[2], i, i, i-1, "s")
	default:
		verse, err = "", errors.New("invalid verse")
	}
	return
}

func Verses(upper, lower int) (verses string, e error) {
	if lower >= upper {
		return "", errors.New("invalid verse")
	}
	for i := upper; i >= lower; i-- {
		v, err := Verse(i)
		if err != nil {
			return "", errors.New("invalid verse")
		}
		verses += v + "\n"
	}
	return
}

func Song() string {
	verses, _ := Verses(99, 0)
	return verses
}
