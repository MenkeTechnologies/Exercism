(defun largest-product (digits span)
  "Find the largest product for a series of digits with the given SPAN."
  (cond
   ((< span 0) (error "Span must be non-negative"))
   ((> span (length digits)) (error "Span must not be longer than the number of digits"))
   ((and (= span 0) (>= (length digits) 0)) 1)
   ((string-match-p "[^0-9]" digits) (error "Digits input must only contain numeric characters"))
   (t
    (let ((max-product 0))
      (dotimes (i (- (length digits) span -1) max-product)
        (let ((product 1))
          (dotimes (j span)
            (setq product (* product (string-to-number (substring digits (+ i j) (+ i j 1))))))
          (setq max-product (max max-product product))))))))

(provide 'largest-series-product)
