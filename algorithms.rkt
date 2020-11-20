(define pos
  (lambda (y)
    (cond
      [(< y 10) y]
      [else
       (let* ([ones (modulo y 10)]
              [rest (quotient y 10)]
              [digits (floor (log rest 10))]
              [IH (pos rest)]
              )
         (+ IH (* ones (expt 10 (+ digits 1))) )
         )]
      )))

(trace pos)
