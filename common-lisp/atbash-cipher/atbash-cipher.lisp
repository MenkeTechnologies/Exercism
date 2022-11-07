(defpackage :atbash-cipher
  (:use :cl)
  (:export :encode))

(in-package :atbash-cipher)

(defun chunked (c str chunk-size)
  (string-right-trim
    " "
    (coerce (loop
              for element across str
              for i = 1 then (1+ i)
              collecting element
              when (zerop (mod i chunk-size))
              collect c)
            'string)))

(defun encode-char (s)
  (if (alpha-char-p s)
    (code-char (+ (- (char-code #\z)
                     (char-code (char-downcase s)))
                  (char-code #\a)))
    s))

(defun encode (s)
  (chunked #\Space
           (map 'string #'encode-char
                (remove-if-not #'alphanumericp s))
           5))
