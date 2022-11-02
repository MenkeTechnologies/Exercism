(defpackage :phone-number
  (:use :cl)
  (:export :clean))
(in-package :phone-number)

(defun clean (s)
  (let* ((digits (remove-if-not #'digit-char-p s))
         (len (length digits)))
    (when (or (< len 10) (> len 11))
      (return-from clean "0000000000"))
    (when (= len 11)
      (if (char/= (aref digits 0) #\1)
        (return-from clean "0000000000"))
      (setf digits (subseq digits 1)))
    (when (or
           (member (aref digits 0) '(#\0 #\1))
           (member (aref digits 3) '(#\0 #\1)))
      (return-from clean "0000000000"))
    digits))
