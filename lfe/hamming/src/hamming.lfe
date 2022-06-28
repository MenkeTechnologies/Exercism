(defmodule hamming
  (export (distance 2)))

(defun distance (a b)
  (lists:sum
   (lists:zipwith (match-lambda
                    ([x y] (when (=:= x y)) 0)
                    ([_ _] 1))
                  a b)))
