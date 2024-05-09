(defun steps (n)
  "Count the steps to reach 1 using the Collatz conjecture."
  (if (< n 1)
      (error "Only positive numbers are allowed")
    (let ((cnt 0))
      (while (> n 1)
        (setq n (if (= (mod n 2) 0) (/ n 2) (+ (* 3 n) 1)))
        (setq cnt (+ cnt 1)))
      cnt)))

(provide 'collatz-conjecture)
