(defpackage :armstrong-numbers
  (:use :cl)
  (:export :armstrong-number-p))
(in-package :armstrong-numbers)

(defun armstrong-number-p (n)
 (= n (loop with digits = (map 'list #'digit-char-p (prin1-to-string n))
        with len = (length digits)
        for digit in digits
        sum (expt digit len)))
 )
