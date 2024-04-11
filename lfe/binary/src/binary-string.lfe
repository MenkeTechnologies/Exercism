(defmodule binary-string (export (to-decimal 1)))

(defun to-decimal (s)
  (case (lists:foldl #'to-decimal/2 0 s)
    ['error 0]
    [val val]))

(defun to-decimal
    [(#\0 acc) (bsl acc 1)]
    [(#\1 acc) (+ (bsl acc 1) 1)]
    [(_ _) 'error])
