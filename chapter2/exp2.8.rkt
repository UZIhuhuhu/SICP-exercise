#lang racket

(define (make-interval a b) (cons a b))

(define (upper-bound interval)
  (max (car interval) (cdr interval)))

(define (lower-bound interval)
  (min (car interval) (cdr interval)))

(define (sub-interval a b)
  (make-interval 
    (- (lower-bound a) (upper-bound b))
    (- (upper-bound a) (lower-bound b))))

;;; test

(define (display-interval i) 
  (newline) 
  (display "[") 
  (display (lower-bound i)) 
  (display ",") 
  (display (upper-bound i)) 
  (display "]")) 
 
;; Usage 
(define i (make-interval 2 7)) 
(define j (make-interval 8 3)) 
 
(display-interval i) 
(display-interval (sub-interval i j)) 
(display-interval (sub-interval j i)) 