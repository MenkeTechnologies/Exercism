(defun compose (f g) (lambda (x) (funcall f (funcall g x))))


(defun keep (predicate list)
  (cl-loop for item in list
           when (funcall predicate item)
           collect item))

(defun discard (predicate list) (keep (compose #'not predicate) list))


(provide 'strain)
