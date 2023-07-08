(defpackage :word-count
  (:use :cl)
  (:export :count-words))

(in-package :word-count)

(defun match (char)
  (find char " ,.:!@#$%^&
"))

(defun string-split (s)
  (loop for i = 0 then end
        as start = (position-if #'alphanumericp s :start i)
        while start
        as end = (position-if #'match s :start start)
        collect (string-right-trim "'" (subseq s start end))
        while end))

(defun count-words (s)
  (let* ((words (string-split (string-downcase s)))
         (keys (remove-duplicates words :test 'equal)))
    (loop for key in keys
          collect (cons key (count key words :test 'equal)))))
