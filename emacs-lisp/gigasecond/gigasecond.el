(provide 'gigasecond)

(defun from (&rest date)
  (set-time-zone-rule t)
  (butlast
   (decode-time
    (time-add (seconds-to-time 1e9)
        (apply #'encode-time date)))
           3))
