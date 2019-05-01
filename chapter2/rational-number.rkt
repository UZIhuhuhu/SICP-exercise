#lang racket

(define (makr-rat x y) (cons x y))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (add-rat x y)
  (make-rat 
    (+ (* (numer x) (denom y)) (* (numer y) (denom x)))
    (* (denom x) (denom y))))

(define (sub-rat x y)
	(make-rat (- (* (numer x) (denom y))
		(* (numer y) (denom x)))
		(* (denom x) (denom y))))