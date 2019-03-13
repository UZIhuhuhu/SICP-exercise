#lang racket
(define (max-sum a b c)
  (cond ((and (< a b) (< a c)) (+ b c))
        ((and (< b c) (< b a)) (+ a c))
        (else (+ a b))     
  )
)

(max-sum 4 5 6)
(max-sum 5 4 6)
(max-sum 6 4 5)