#!/usr/bin/env bash

r=$(( $(gdate -u -d "$1" '+%s') + 1000000000 ))

gdate -u +%Y-%m-%dT%H:%M:%S -d "@$r"

