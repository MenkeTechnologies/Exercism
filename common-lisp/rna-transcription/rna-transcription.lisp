(defpackage :rna-transcription
  (:use :cl)
  (:export :to-rna))
(in-package :rna-transcription)

(setf alist '((#\G . #\C) (#\C . #\G) (#\T . #\A) (#\A . #\U)))

(defun rnap (nt)
  (cdr
   (assoc nt alist)))

(defun to-rna (s)
  (map 'string #'rnap s)
)
