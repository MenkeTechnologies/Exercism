(defpackage :bob
  (:use :cl)
  (:export :response))
(in-package :bob)

(defun response (s)
  (when (null s) (setf s ""))
  (setf trim (string-trim '(#\Space #\Tab #\Newline) s))
  (if (string= "" trim) "Fine. Be that way!"
    (let ((all-caps (and (some #'upper-case-p trim) (notany #'lower-case-p trim))))
      (if (char= #\? (elt trim (1- (length trim))))
        (if all-caps "Calm down, I know what I'm doing!" "Sure.")
        (if all-caps "Whoa, chill out!" "Whatever.")))))
