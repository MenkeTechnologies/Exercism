(defpackage :eliuds-eggs
  (:use :cl)
  (:export :egg-count))

(in-package :eliuds-eggs)

(defun egg-count (number)
    (do ((res 0)
       (number number (ash number -1)))
      ((zerop number) res)
    (when (oddp number) (incf res))))
