(defpackage :leap
  (:use :cl)
  (:export :leap-year-p))
(in-package :leap)

(defun divisible (a b)
 (zerop (mod a b)))

(defun leap-year-p (y)
 (or
    (and (divisible y 4)
        (not (divisible y 100)))
    (divisible y 400))
  )
