#lang racket
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b) 
  )


; test
(a-plus-abs-b 2 -3)

(a-plus-abs-b 2 3)