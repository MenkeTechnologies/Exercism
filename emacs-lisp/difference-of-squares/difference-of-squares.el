(provide 'difference-of-squares)

(defun square-of-sum (n)
 (expt (apply '+ (number-sequence 1 n)) 2))

(defun sum-of-squares (n)
 (apply '+ (mapcar (lambda (nn) (expt nn 2)) (number-sequence 1 n))))

(defun difference (n)
    (-  (square-of-sum n)
        (sum-of-squares n)))
