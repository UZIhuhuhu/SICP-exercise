#lang racket

;;; cons 返回一个函数

;;; car, cdr 分别返回函数中的第一个元素，第二个元素

(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q)))


;;; test

(define x (cons 3 4))

(car x)

(cdr x)