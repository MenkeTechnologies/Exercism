#!/usr/bin/env bash

modifier() {
	tmp=$(($1 - 10))
	if ((tmp % 2 != 0 && tmp < 0)); then
        ((--tmp))
	fi
	echo $((tmp / 2))
}

diceX3() {
	echo $((RANDOM % 16 + 3))
}

generate() {
	constitution="$(diceX3)"
	echo "strength $(diceX3)"
	echo "dexterity $(diceX3)"
	echo "constitution $constitution"
	echo "intelligence $(diceX3)"
	echo "wisdom $(diceX3)"
	echo "charisma $(diceX3)"
	echo "hitpoints $((10 + $(modifier "$constitution")))"
}

case "$1" in
    modifier)
        modifier "$2"
        ;;
    generate)
        generate
        ;;
esac

