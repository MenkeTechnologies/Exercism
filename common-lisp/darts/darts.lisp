(defpackage :darts
  (:use :cl)
  (:export :score))

(in-package :darts)

(defun dist (x y)
  (sqrt (+ (expt x 2) (expt y 2))))

(defun score (x y)
  (let ((d (dist x y)))
    (cond ((> d 10) 0)
          ((> d 5) 1)
          ((> d 1) 5)
          (t 10))))
