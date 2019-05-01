#lang racket

(define (cons x y)
  (define (dispatch m)
    (cond ((= m 0) x)
      ((= m 1) y)
      (else (error "Argument Error"))))
  dispatch)

(define (car p) (p 0))

(define (cdr p) (p 1))