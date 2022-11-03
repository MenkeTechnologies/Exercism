(defpackage :raindrops
  (:use :cl)
  (:export :convert))

(in-package :raindrops)

(defparameter raindrops-factors
  '((3 . "Pling")
    (5 . "Plang")
    (7 . "Plong")))

(defun convert (n)
  (let ((drops (loop for (factor . drop) in raindrops-factors
                     when (zerop (mod n factor)) collect drop)))
    (if drops (format nil "~{~a~}" drops)
      (write-to-string n))))
