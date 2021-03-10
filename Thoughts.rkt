#lang racket

(lambda (x) (+ x 2))
((lambda (x) (+ x 2))2)

(define (for initialCount FinalCount State StateTransition)
  (if (>= initialCount FinalCount)
      State
      (for (+ initialCount 1) FinalCount (StateTransition State) StateTransition)))

(for 0 5 3 (lambda (x) (+ x 2)))