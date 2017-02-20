#lang racket
(define (square x)
  (* x x))

(define (tree-map square tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (tree-map square sub-tree)
             (square sub-tree)))
       tree))

(define (square-tree tree)
  (tree-map square tree))




;;test
(define test (list 1 (list 2 (list 3 4) 5) (list 6 7)))
(square-tree test)