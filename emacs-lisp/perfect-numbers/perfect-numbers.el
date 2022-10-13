(provide 'perfect-numbers)

(require 'seq)

(defun aliquot (n)
  (apply '+ 
   (seq-filter (lambda (m) (zerop (% n m)))
    (number-sequence 1 (/ n 2)))))

(defun classify (n)
 (let ((sum (aliquot n)))
    (cond ((> 0 n) (error "Classification is only possible for natural numbers"))
        ((> sum n) 'abundant)
        ((< sum n) 'deficient)
        (t 'perfect)

  ))
 )
