(defpackage :roman-numerals
  (:use :cl)
  (:export :romanize))

(in-package :roman-numerals)

(setf numerals '((1000 . "M")
		  (900 . "CM")
		  (500 . "D")
		  (400 . "CD")
		  (100 . "C")
		  (90 . "XC")
		  (50 . "L")
		  (40 . "XL")
		  (10 . "X")
		  (9 . "IX")
		  (5 . "V")
		  (4 . "IV")
		  (1 . "I")))

(defun join (lst)
    (apply #'concatenate 'string lst))

(defun repeat (s n)
    (join (loop repeat n collect s)))

(defun romanize (n)
    (join (loop for (k . v) in numerals collect (repeat v (floor n k)) do (setf n (mod n k)))))
