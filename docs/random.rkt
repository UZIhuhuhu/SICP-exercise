#lang racket

(#%require (only racket/base random))

(define (randomlist target sum)
  (cond
    [(= target 0) empty]
    [else
     (cons (+ 1 (random sum))
           (randomlist (- target 1) sum))]))

(randomlist 10 100)