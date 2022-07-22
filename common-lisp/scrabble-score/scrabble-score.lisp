(defpackage :scrabble-score
  (:use :cl)
  (:export :score-word))

(in-package :scrabble-score)

(defun score-char (c)
  (case (char-downcase c)
    ((#\a #\e #\i #\o #\u #\l #\n #\r #\s #\t) 1)
    ((#\d #\g) 2)
    ((#\b #\c #\m #\p) 3)
    ((#\f #\h #\v #\w #\y) 4)
    ((#\k) 5)
    ((#\j #\x) 8)
    ((#\q #\z) 10)
    (otherwise 0)))

(defun score-word (word)
       (reduce #'+ (map 'list #'score-char word)))
