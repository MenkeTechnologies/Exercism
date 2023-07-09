(defpackage :largest-series-product
  (:use :cl)
  (:export :largest-product))

(in-package :largest-series-product)

(defun largest-product (digits span)
  (when (and (>= (length digits) span 0)
             (every #'digit-char-p digits))
    (loop for start from 0 to (- (length digits) span)
          for series = (subseq digits start (+ start span))
          maximize (reduce (lambda (acc c) (* acc (digit-char-p c)))
                           series :initial-value 1))))
