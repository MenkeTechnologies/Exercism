(provide 'phone-number)

(defun match-number (number)
  (string-match
   "^\\(+?1\\)?\s*(?\\([0-9]\\{3\\}\\))?[ .-]*\\([0-9]\\{3\\}\\)[ .-]*\\([0-9]\\{4\\}\\)$"
   number))

(defun parse-number (number)
  (if (match-number number)
      (let ((phone-parts
	     `((area-code . ,(match-string 2 number))
	       (exchange-code . ,(match-string 3 number))
	       (subs-number . ,(match-string 4 number)))))
	phone-parts)))

(defun area-code (number)
  (match-number number) (match-string 2 number))

(defun numbers (number)
  (let ((num-parts (parse-number number)))
    (if num-parts
	(concat
	 (cdr (assoc 'area-code num-parts))
	 (cdr (assoc 'exchange-code num-parts))
	 (cdr (assoc 'subs-number num-parts)))
      "0000000000")))

(defun pprint (number)
  (let ((num-parts (parse-number number)))
    (when num-parts
      (concat
       "(" 
       (cdr (assoc 'area-code num-parts))
       ") "
       (cdr (assoc 'exchange-code num-parts))
       "-"
       (cdr (assoc 'subs-number num-parts))))))
