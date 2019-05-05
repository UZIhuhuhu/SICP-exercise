#lang racket


(define (cubic a b c)
  (define (cube x) (* x x x))
  (define (double x) (* x x))
  (lambda (x) 
    (+ (cube x) (* a (double x)) (* b x) c)))

 