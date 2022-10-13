(provide 'leap-year-p)

(defun leap-year-p (year)
 (and (= 0 (% year 4))
  (or (/= 0 (% year 100)) (= 0 (% year 400)))))
