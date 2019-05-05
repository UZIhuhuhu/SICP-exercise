#lang racket

(define (make-interval a b) (cons a b))

(define (upper-bound interval)
  (max (car interval) (cdr interval)))

(define (lower-bound interval)
  (min (car interval) (cdr interval)))


;;; test

(define i (make-interval 2 7)) 
(upper-bound i) 
(lower-bound i) 
 
(define j (make-interval 8 3)) 
(upper-bound j) 
(lower-bound j) 