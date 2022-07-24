(defpackage :lucys-magnificent-mapper
  (:use :cl)
  (:export :make-magnificent-maybe :only-the-best))

(in-package :lucys-magnificent-mapper)

(defun make-magnificent-maybe (f lst)
  (mapcar f lst))

(defun only-the-best (f lst)
  (remove-if f
             (remove-if (lambda (x) (= x 1)) lst)))
