(defpackage :sublist
  (:use :cl)
  (:export :sublist))

(in-package :sublist)

(defun sublist (lst1 lst2)
  (cond ((equal lst1 lst2) :equal)
        ((search lst1 lst2) :sublist)
        ((search lst2 lst1) :superlist)
        (t :unequal)))
