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

(defun next-numeral (n)
  (first (remove-if (lambda (x) (> (car x) n)) numerals)))

(defun ->numerals (number)
  (loop with n = number
	while (> n 0)
	collect (let ((pair (next-numeral n)))
		  (setf n (- n (car pair)))
		  (cdr pair))))

(defun romanize (number)
  (reduce (lambda (acc n) (concatenate 'string acc n))
	  (->numerals number)))
