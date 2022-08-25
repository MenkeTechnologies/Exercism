package queenattack

import (
	"errors"
	"regexp"
)

var positionMatch = regexp.MustCompile(`[a-h][1-8]`)

func CanQueenAttack(w, b string) (attack bool, err error) {
	if w == b || !positionMatch.MatchString(w) || !positionMatch.MatchString(b) {
		err = errors.New("position values cannot be the same")
		return
	} else if !positionMatch.MatchString(w) || !positionMatch.MatchString(b) {
		err = errors.New("position values are invalid")
		return
	}
	wRow, wCol := int(w[0]), int(w[1])
	bRow, bCol := int(b[0]), int(b[1])
	dy := abs(wRow - bRow)
	dx := abs(wCol - bCol)
	if dy == 0 || dx == 0 || dy == dx {
		attack = true
	}
	return
}

func abs(i int) int {
	if i < 0 {
		return -i
	}
	return i
}
