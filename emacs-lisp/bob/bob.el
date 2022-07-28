(provide 'bob)

(require 'subr-x)

(defun response-for (input)
  ""
  (let* ((nows (string-trim input))
        (question? (string-suffix-p "?" nows))
        (yell? (and (string-match-p "[a-z]\\|[A-Z]" nows)
                    (string= (upcase nows) nows))))
    (cond ((string= "" nows)
           "Fine. Be that way!")
          ((and question? yell?)
           "Calm down, I know what I'm doing!")
          (question? "Sure.")
          (yell? "Whoa, chill out!")
          (t "Whatever."))))

