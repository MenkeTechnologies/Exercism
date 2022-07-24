(defpackage :pangram
  (:use :cl)
  (:export :pangramp))

(in-package :pangram)

(defun pangramp (s)
   (every #'integerp
       (loop for i from (char-code #\a) to (char-code #\z)
             collect (position (code-char i) (string-downcase s)))))

