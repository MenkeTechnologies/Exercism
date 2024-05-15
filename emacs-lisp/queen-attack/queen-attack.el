(defun valid-position-p (queen) (and (<= 0 (car queen) 7) (<= 0 (cdr queen) 7)))

(defun can-attack-p (q1 q2)
  (cl-destructuring-bind ((x1 . y1) (x2 . y2)) (list q1 q2)
  (let* ((dx (abs(- x1 x2)))
        (dy (abs(- y1 y2))))
    (or (= dx 0)
	    (= dy 0)
	    (= dx dy)))))

(provide 'queen-attack)
