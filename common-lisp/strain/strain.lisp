(defpackage :strain
  (:use :cl)
  (:export :keep :discard))

(in-package :strain)

(defun keep (f lst)
 (loop for item in lst when (funcall f item) collect item))

(defun discard (f  lst)
  (keep (complement f) lst))
