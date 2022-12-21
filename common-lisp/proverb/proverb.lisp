(defpackage :proverb
  (:use :cl)
  (:export :recite))

(in-package :proverb)

(defun recite (strings)
  (loop for start on strings
    if (cdr start)
        collect (format nil "For want of a ~a the ~a was lost." (car start) (cadr start)) into out
    else
        collect (format nil "And all for the want of a ~a." (car strings)) into out
    end
    finally (return (format nil "~{~A~^~%~}" out))))
