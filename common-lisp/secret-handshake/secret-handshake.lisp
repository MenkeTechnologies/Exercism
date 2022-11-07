(defpackage :secret-handshake
  (:use :cl)
  (:export :commands))

(in-package :secret-handshake)

(defvar *commands* '((1 . "wink")
                     (2 . "double blink")
                     (4 . "close your eyes")
                     (8 . "jump")))

(defun commands (number)
  (let ((cmd (loop :for pair :in *commands*
                   :when (= (car pair) (boole boole-and number (car pair)))
                   :collect (cdr pair))))
    (if (= (boole boole-and number 16) 16)
      (reverse cmd)
      cmd)))
