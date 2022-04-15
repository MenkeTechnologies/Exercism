#!/usr/bin/env bash

grep -qvE '([a-z]).*\1' <<< "${1,,}" && echo true || echo false

