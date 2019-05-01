#lang racket

(define (cube x) (* x x x))

(define (inc x) (+ x 1))

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (+ result (term a)))))
  (iter a 0))

(define (sum-cube a b)
  (sum cube a inc b))

(sum-cube 2 3)
