(defpackage :gigasecond-anniversary
  (:use :cl)
  (:export :from))
(in-package :gigasecond-anniversary)

(defun from (year month day hour minute second)
  (let ((start-time (encode-universal-time second minute hour day month year 0))
        (gigasecond (expt 10 9)))
    (reverse
      (subseq
        (multiple-value-list
          (decode-universal-time
            (+ start-time gigasecond) 0))
        0 6))))

