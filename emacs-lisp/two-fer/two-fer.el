;;; two-fer.el --- Two-fer Exercise (exercism)

;;; Commentary:

;;; Code:


(provide 'two-fer)
;;; two-fer.el ends here


(defun two-fer (&optional name)
 (format "One for %s, one for me." (or name "you")))
