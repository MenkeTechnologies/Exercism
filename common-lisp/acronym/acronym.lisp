(defpackage :acronym
  (:use :cl)
  (:export :acronym))

(in-package :acronym)

(defun acronym (s)
  "Returns the acronym for a noun of tech jargon."
  (let ((title (string-capitalize s)))
   (remove-if-not #'upper-case-p title))
  )
