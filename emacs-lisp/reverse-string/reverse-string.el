;;; reverse-string.el --- Reverse String (exercism)  -*- lexical-binding: t; -*-

(defun reverse-string (s) (apply #'string (reverse (string-to-list s))))

(provide 'reverse-string)
