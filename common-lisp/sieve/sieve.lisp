(defpackage :sieve
  (:use :cl)
  (:export :primes-to)
  (:documentation "Generates a list of primes up to a given limit."))

(in-package :sieve)

(defun primes-to (limit)
  (loop with numbers = (make-array (1+ limit) :element-type 'boolean
                                   :initial-element t)
        for n from 2 to (sqrt limit)
        when (aref numbers n)
        do (loop for m from (+ n n) to limit by n
                 do (setf (aref numbers m) nil))
        finally (return (loop for i from 2 to limit
                              when (aref numbers i)
                              collect i))))
