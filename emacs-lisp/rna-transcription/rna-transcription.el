(provide 'rna-transcription)

(defun to-rna (s)
 (mapconcat (lambda (c)
             (pcase c
                (?G "C")
                (?C "G")
                (?T "A")
                (?A "U")
                (_ (error "Unknown character %s" c))
              ))
  s ""
  ))
