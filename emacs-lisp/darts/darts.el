(provide 'darts)

(defun score (x y)
  (let ((dist (sqrt (+ (* x x) (* y y)))))
	(cond ((> dist 10) 0)
		  ((> dist 5) 1)
		  ((> dist 1) 5)
		  (t 10))))
