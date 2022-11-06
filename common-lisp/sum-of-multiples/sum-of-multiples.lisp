(defpackage :sum-of-multiples
  (:use :cl)
  (:export :sum))

(in-package :sum-of-multiples)

(defun sum (factors limit)
  (reduce #'+ (remove-if-not
    (lambda (n) (some (lambda (f) (zerop (mod n f))) (remove-if #'zerop factors)))
      (loop for i from 1 to (1- limit) collect i))))

