#lang racket


(define (make-pointer x y) (cons x y))

(define (x-pointer p) (car p))

(define (y-pointer p) (cdr p))

(define (rectangle bottom-left top-right)
  (cons bottom-left top-right))

(define (bottom-left rec) (car rec))

(define (bottom-right rec) 
  (make-pointer 
    (x-pointer (cdr rec))
    (y-pointer (car rec))))

(define (top-right rec) (cdr rec))

(define (top-left rec)
  (make-pointer
    (x-pointer (car rec))
    (y-pointer (cdr rec))))

(define (width rec)
  (- (x-pointer (bottom-right rec))
     (x-pointer (bottom-left rec))))

(define (height rec)
  (- (y-pointer (top-left rec))
     (y-pointer (bottom-left rec))))

(define (perimeter rec)
  (* 2 (+ (width rec) (height rec))))

(define (area rec)
  (* (width rec) (height rec)))


;;; test

(define r (rectangle 
  (make-pointer 1 1)
  (make-pointer 3 7)))

(perimeter r)

(area r)