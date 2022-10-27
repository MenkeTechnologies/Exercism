(defpackage :logans-numeric-partition
  (:use :cl)
  (:export :categorize-number :partition-numbers))

(in-package :logans-numeric-partition)

(defun categorize-number (lists num)
  (let ((oddl (car lists))
        (evenl (cdr lists)))
    (if (oddp num)
      (cons (cons num oddl) evenl)
      (cons oddl (cons num evenl)))))

(defun partition-numbers (numbers)
  (reduce #'categorize-number numbers :initial-value '(nil)))

