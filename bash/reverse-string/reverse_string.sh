#!/usr/bin/env bash

printf "$1" | perl -pe '$_=reverse'
