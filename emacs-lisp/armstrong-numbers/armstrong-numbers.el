(defun armstrong-p (n)
 (eq n
  (apply '+
   (mapcar
    (lambda (x) (expt (cl-digit-char-p x) (length (number-to-string n))))
    (prin1-to-string n)))))

(provide 'armstrong-numbers)
