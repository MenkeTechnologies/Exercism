(defconst dict '(("black" . 0)
                           ("brown". 1)
                           ("red" . 2)
                           ("orange" . 3)
                           ("yellow" . 4)
                           ("green" . 5)
                           ("blue" . 6)
                           ("violet" . 7)
                           ("grey" . 8)
                           ("white" . 9 )))

(defun color-code (color) (cdr (assoc color dict)))

(defun value (colors) (+ (* 10 (color-code (car colors))) (color-code (cadr colors))))

(provide 'resistor-color-duo)
