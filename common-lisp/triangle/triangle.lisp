(defpackage :triangle
  (:use :cl)
  (:export :triangle-type-p))

(in-package :triangle)

(defun triangle-type-p (type a b c)
  (let ((sorted (sort (list a b c) #'<)))
    (when (> (+ (first sorted) (second sorted)) (third sorted))
      (case type
        (:equilateral (= a b c))
        (:isosceles (or (= a b) (= b c) (= c a)))
        (:scalene (and (/= a b) (/= b c) (/= c a)))))))

