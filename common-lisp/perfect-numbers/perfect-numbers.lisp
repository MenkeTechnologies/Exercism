(defpackage :perfect-numbers
  (:use :cl)
  (:export :classify))

(in-package :perfect-numbers)

(defun factors (n)
  (loop for i from 1 to (/ n 2)
     when (zerop (rem n i)) collect i))

(defun classify (n)
  (if (plusp n)
      (let ((sum (reduce #'+ (factors n))))
	(cond
	  ((= sum n) "perfect")
	  ((> sum n) "abundant")
	  ((< sum n) "deficient")))))
