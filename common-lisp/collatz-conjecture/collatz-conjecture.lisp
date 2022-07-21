(defpackage :collatz-conjecture
  (:use :cl)
  (:export :collatz))

(in-package :collatz-conjecture)

(defun collatz (n)
  (labels ((rec (n cnt)
             (cond ((= n 1) cnt)
                   ((evenp n) (rec (/ n 2) (1+ cnt)))
                   (t (rec (1+ (* 3 n)) (1+ cnt))))))
    (and (plusp n) (rec n 0))))
