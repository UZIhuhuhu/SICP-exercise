#lang racket

(define (make-rat n d) (cons n d))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))


(define (better-rat n d) 
  (let ((g ((if (> d 0) + -) (gcd n d))))
    (cons (/ n g) (/ d g))))


;;; test

(print-rat (better-rat 6 9))

(print-rat (better-rat 6 -9))