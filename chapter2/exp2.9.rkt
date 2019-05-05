#lang racket

(define (make-interval a b) (cons a b))

(define (upper-bound interval)
  (max (car interval) (cdr interval)))

(define (lower-bound interval)
  (min (car interval) (cdr interval)))

(define (mul-interval x y)
  (let ((a (* (lower-bound x) (lower-bound y)))
        (b (* (lower-bound x) (upper-bound y)))
        (c (* (upper-bound x) (upper-bound y)))
        (d (* (upper-bound x) (lower-bound y))))
    (make-interval (min a b c d) (max a b c d))))

(define (div-interval x y) 
  (if (<= 0 (* (lower-bound y) (upper-bound y))) 
      (error "Division error (interval spans 0)" y) 
      (mul-interval x  
                    (make-interval (/ 1. (upper-bound y)) 
                                   (/ 1. (lower-bound y)))))) 