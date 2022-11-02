(defpackage :prime-factors
  (:use :cl)
  (:export :factors))

(in-package :prime-factors)

(defun factors (num)
  (do ((divisor 2 (incf divisor))
       (factors '()))
      ((> divisor num) (sort factors #'<))
    (setq num
          (do ((value num (floor value divisor)))
              ((not (zerop (mod value divisor))) value)
            (push divisor factors)))))
