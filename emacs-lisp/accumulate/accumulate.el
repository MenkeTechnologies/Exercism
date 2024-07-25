(defun accumulate (lst f)
  (when lst (cons (funcall f (car lst)) (accumulate (cdr lst) f))))

(provide 'accumulate)
