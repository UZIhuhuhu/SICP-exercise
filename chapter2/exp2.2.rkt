#lang racket

;;; constructor

(define (make-point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

;;; segment

(define (make-segment start-pointer end-pointer)
  (cons start-pointer end-pointer))

(define (start-segment segment) (car segment))

(define (end-segment segment) (cdr segment))



;;; target

(define (midpoint-segment segment)
  (define (average a b) (/ (+ a b) 2))
  (let ((a (start-segment segment))
       (b (end-segment segment)))
        (make-point 
          (average (x-point a) (x-point b))
          (average (y-point a) (y-point b)))))

;;; print

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


(define seg (make-segment (make-point 2 3) 
                           (make-point 10 15))) 
  
(print-point (midpoint-segment seg)) 