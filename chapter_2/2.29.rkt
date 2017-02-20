#lang racket
(define (make-mobile left right)
  (list left right))
(define (make-branch length structure)
  (list length structure))

;;;a
(define (left-branch mobile)
  (car mobile))
(define (right-branch mobile)
  (car(cdr mobile)))
(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  (car(cdr branch)))

;;;b
(define (branch-weight branch)
    (if (pair? (branch-structure branch))
        (total-weight (branch-structure branch))
        (branch-structure branch)))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

;;;c
(define (isbalanced? mobile)
  (define (branch-balanced? branch) 
   (let ((s (branch-structure branch))) 
     (if (pair? s) 
         (isbalanced? s) 
         true)))
  (define (branch-torque branch) 
   (* (branch-weight branch) 
      (branch-length branch)))
  (and (= (branch-torque (left-branch mobile))
          (branch-torque (right-branch mobile)))
       (branch-balanced? (left-branch mobile))
       (branch-balanced? (right-branch mobile))))

;;;test
(define test (make-mobile (make-branch 2 5)(make-branch 5 2)))
(define test1 (make-mobile (make-branch 4 test)(make-branch 7 4)))

;;test b
(total-weight test1)
;;test c
(isbalanced? test1)