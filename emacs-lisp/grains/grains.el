;;; grains.el --- Grains exercise (exercism)

(provide 'grains)
;;; grains.el ends here

(defun square (num)
 (expt 2.0 (1- num)))

(defun total ()
 (apply #'+ (mapcar #'square (number-sequence 1 64))))
