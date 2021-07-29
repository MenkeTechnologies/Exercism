#!/usr/bin/env bash


score=0
word="${1^^}"


for (( i = 0; i < ${#word}; i++ )); do
    ch=${word:$i:1}

    case $ch in
        A | E | I | O | U | L | N | R | S |T )
            (( score += 1 ))
            ;;
        D | G)
            (( score += 2 ))
            ;;
        B | C | M | P)
            (( score += 3 ))
            ;;
        F | H | V | W | Y)
            (( score += 4 ))
            ;;
        K)
            (( score += 5 ))
            ;;
        J | X)
            (( score += 8 ))
            ;;
        Q | Z)
            (( score += 10 ))
            ;;
    esac
done

echo "$score"

