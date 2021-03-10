#lang racket

(lambda (x) (+ x 2)) ;lambda notation 
((lambda (x) (+ x 2))2)

(define (for initialCount FinalCount State StateTransition)
  (if (>= initialCount FinalCount)
      State
      (for (+ initialCount 1) FinalCount (StateTransition State) StateTransition)))

(for 0 5 77 (lambda (x) (+ x 2))) ;for loop [0,1,2,3,4], add 2 to 77 five times


(define (superfib n)
  (helpfib 0 1 1 0 n))
(define (helpfib a b p q n)
  (cond ((= n 0) b)
        ((even? n) (helpfib a
                            b
                            (+ (expt p 2) (* 2 p q))
                            (+ (expt p 2) (expt q 2))
                            (/ n 2)))
        ((odd? n) (helpfib (+ (* p b) (* q a))
                           (+ (* b (+ p q)) (* p a))
                           p
                           q
                           (- n 1) ))))

(superfib 9)
