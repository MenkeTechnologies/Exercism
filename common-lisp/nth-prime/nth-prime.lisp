(defpackage :nth-prime
  (:use :cl)
  (:export :find-prime))

(in-package :nth-prime)

(defun find-prime (nth)
  (unless (zerop nth)
    (loop :for n :from 2
          :when (prime? n) :sum 1 :into cnt
          :when (= cnt nth) :return n)))

(defun prime? (nth)
  (loop :for n :from 2 :upto (sqrt nth)
        :never (zerop (rem nth n))))
