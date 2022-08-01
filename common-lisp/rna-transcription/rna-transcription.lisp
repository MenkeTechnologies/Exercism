(defpackage :rna-transcription
  (:use :cl)
  (:export :to-rna))
(in-package :rna-transcription)

(setf alist '((#\G . #\C) (#\C . #\G) (#\T . #\A) (#\A . #\U)))

(defun to-rna (s)
  (map 'string (lambda (nt) (cdr (assoc nt alist))) s)
)
