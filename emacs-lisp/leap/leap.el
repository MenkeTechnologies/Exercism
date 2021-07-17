;;; leap.el --- Leap exercise (exercism)

;;; Commentary:

;;; Code:

(defun leap-year-p (year)

 (and (= 0 (% year 4))
  (or (/= 0 (% year 100)) (= 0 (% year 400))))
 )


(provide 'leap-year-p)
;;; leap.el ends here
