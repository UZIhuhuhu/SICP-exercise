#lang racket

(define (halve x)
  (/ x 2))

(define (fast-expt b n)
  (define (iter b n product)
    (cond ((= n 0) product)
          ((even? n) (iter (square b) (halve n) product))
          (else (iter b (- n 1) (* product b)))))
  (iter b n 1))

(fast-expt 2 4)