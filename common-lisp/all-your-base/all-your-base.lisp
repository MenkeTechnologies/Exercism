(defpackage :all-your-base
  (:use :cl)
  (:export :rebase))

(in-package :all-your-base)

(defun undigits (list-digits base)
  (reduce (lambda (acc n) (+ (* acc base) n)) list-digits :initial-value 0))

(defun digits (sum base)
  (if (< sum base)
      (list sum)
      (cons (rem sum base) (digits (truncate sum base) base))))

(defun rebase (list-digits in-base out-base)
  (and (> in-base 1)
       (> out-base 1)
       (every (lambda (n) (< -1 n in-base)) list-digits)
      (nreverse (digits (undigits list-digits in-base) out-base))))
