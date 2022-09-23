(defmodule bob
  (export (response-for 1)))

(defun match-question? (s)
  (case (re:run s "\\?$")
    (`#(match ,_) 'true)
    (_ 'false)))

(defun match-shout? (s)
  (let ((uc (string:to_upper s)) (lc (string:to_lower s)))
    (and (== uc s)
	 (!= lc s))))

(defun match-empty? (s)
  (== (string:strip s) ""))

(defun response-for (s)
  (cond
   ((match-empty? s) "Fine. Be that way!")
   ((match-shout? s) "Whoa, chill out!")
   ((match-question? s) "Sure.")
   ('true "Whatever.")))
