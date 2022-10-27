(defpackage :logans-numeric-partition
  (:use :cl)
  (:export :categorize-number :partition-numbers))

(in-package :logans-numeric-partition)

(defun categorize-number (acc n)
  (let ((oddl (car acc))
        (evenl (cdr acc)))
    (if (oddp n)
      (cons (cons n oddl) evenl)
      (cons oddl (cons n evenl)))))

(defun partition-numbers (numbers)
  (reduce #'categorize-number numbers :initial-value '(nil)))

