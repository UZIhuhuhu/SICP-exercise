#lang planet neil/sicp

(#%require (only racket/base random))

(define (prize n p)
  (take (shuffle (range n) p)))

(print (prize 100 10))