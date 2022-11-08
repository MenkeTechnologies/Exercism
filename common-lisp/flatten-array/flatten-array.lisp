(defpackage :flatten-array
  (:use :cl)
  (:export :flatten))
(in-package :flatten-array)

(defun flatten (nested)
  (cond ((null nested) nil)
        ((atom nested) (list nested))
        (t (mapcan #'flatten nested))))
