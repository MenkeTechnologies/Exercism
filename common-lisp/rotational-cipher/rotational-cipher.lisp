(defpackage :rotational-cipher
  (:use :cl)
  (:export :rotate))

(in-package :rotational-cipher)

(defconstant *max-s-lower* (char-code #\a))
(defconstant *max-l-lower* (char-code #\A))

(defun rotate-char (c key)
  (let ((code (char-code c)))
    (if (upper-case-p c)
      (code-char (+ *max-l-lower* (mod (+ key (- code *max-l-lower*)) 26)))
      (code-char (+ *max-s-lower* (mod (+ key (- code *max-s-lower*)) 26))))))

(defun rotate (s key)
  (coerce
    (loop for c across s
          collect (if (alpha-char-p c)
                    (rotate-char c key)
                    c))
    'string))
