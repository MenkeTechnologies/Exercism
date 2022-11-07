(defpackage :secret-handshake
  (:use :cl)
  (:export :commands))

(in-package :secret-handshake)

(defconstant *commands* '((1 . "wink")
                     (2 . "double blink")
                     (4 . "close your eyes")
                     (8 . "jump")))

(defun commands (n)
  (let ((cmd (loop :for pair :in *commands*
                   :when (plusp (boole boole-and n (car pair)))
                   :collect (cdr pair))))
    (if (plusp (boole boole-and n 16))
      (reverse cmd)
      cmd)))
