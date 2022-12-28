package diamond

import (
	"bytes"
	"errors"
	"strings"
)

func Gen(inCh byte) (string, error) {
	if inCh < 'A' || inCh > 'Z' {
		return "", errors.New("Char out of range")
	}
	rowCnt := 2*(inCh-'A') + 1
	rows := make([]string, rowCnt)
	for c := byte('A'); c <= inCh; c++ {
		row := bytes.Repeat([]byte{' '}, int(rowCnt))
		colNum := inCh - c
		row[colNum] = c
		row[rowCnt-colNum-1] = c
		rowNum := c - 'A'
		rows[rowNum] = string(row)
		rows[rowCnt-rowNum-1] = string(row)
	}
	return strings.Join(rows, "\n"), nil
}
