(defmodule leap
  (export (leap-year 1)))

(defun leap-year (y)
 (or
  (and (== 0 (rem y 4)) (!= 0 (rem y 100)))
  (== 0 (rem y 400))
  )
 )
