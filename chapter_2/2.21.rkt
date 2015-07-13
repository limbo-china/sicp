#lang racket
;;;square
(define (square x)(* x x))
;;;--------------------------one
;;;square-list
;;;(define (square-list items)
;;;  (if(null? items)
;;;     null
;;;     (cons (square (car items))(square-list (cdr items)))))
;;; test
;;; (square-list (list 1 2 3 4))


;;;--------------------------two
(define (square-list items)
  (map square items))
(square-list (list 1 2 3 4))


  