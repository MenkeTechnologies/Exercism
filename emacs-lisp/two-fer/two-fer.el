(provide 'two-fer)

(defun two-fer (&optional name)
 (format "One for %s, one for me." (or name "you")))
