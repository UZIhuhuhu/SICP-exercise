#lang racket

(define (cube x) (* x x x))

;;; before

;;; (define (sum a b)
;;;   (if (> a b)
;;;     0
;;;     (+ a (sum (+ a 1) b))))
    
;;; (define (sum-cube a b)
;;;   (if (> a b)
;;;     0
;;;     (+ (cube a) (sum-cube (+ a 1) b))))

;;; (sum-cube 2 3)

;;; next

(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a) (sum term (next a) next b))))

(define (inc n) (+ n 1))

(define (sum-cube a b)
  (sum cube a inc b))

(sum-cube 2 3)

(define (indentity a) a)

(define (sum-intergers a b)
  (sum indentity a inc b))

(sum-intergers 1 10)