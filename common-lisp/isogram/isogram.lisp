(defpackage :isogram
  (:use :cl)
  (:export :isogram-p))

(in-package :isogram)

(defun isogram-p (s)
 (let ((letters (string-downcase (remove-if-not #'alpha-char-p s))))
  (string= letters (remove-duplicates letters))
  )
)
