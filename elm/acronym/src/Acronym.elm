module Acronym exposing (abbreviate)

import List exposing (map)
import String exposing (concat, left, replace, toUpper, words)

abbreviate = toUpper >> replace "-" " " >> words >> map (left 1) >> concat
