(defpackage :lillys-lasagna-leftovers
  (:use :cl)
  (:export
   :preparation-time
   :remaining-minutes-in-oven
   :split-leftovers))

(in-package :lillys-lasagna-leftovers)

(defun preparation-time (&rest layers)
 (* 19 (length layers)))

(defun remaining-minutes-in-oven (&optional (style :normal))
 (ecase style
    (:normal 337)
    (:shorter 237)
    (:very-short 137)
    (:longer 437)
    (:very-long 537)
    ((nil) 0)
  )
 )

(defun split-leftovers (&key (weight nil weight-p) (human 10) (alien 10))
 (cond
  (weight (max 0 (- weight human alien)))
  (weight-p :looks-like-someone-was-hungry)
  (t :just-split-it)
  )
 )
