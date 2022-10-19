(in-package #:cl-user)
(defpackage #:luhn
  (:use #:cl)
  (:export #:validp))
(in-package #:luhn)

(defun double (digit)
  (let ((doubled (* digit 2)))
    (if (> doubled 9)
        (- doubled 9)
        doubled)))

(defun sum (s)
  (loop
     for i across s
     for j from 0
     summing (if (oddp j)
                 (double (digit-char-p i))
                 (digit-char-p i))))

(defun validp (input)
  (let ((rvs (reverse (remove #\Space input))))
    (when (and (> (length rvs) 1)
               (every 'digit-char-p rvs))
      (zerop (mod (sum rvs) 10)))))
