#lang racket
;;;sum in iterative form
(define (sum term a next b)
    (define (iter a result)
      (if(> a b) result
         (iter (next a) (+ result (term a)))))
  (iter a 0))
;;;;sum in iterative form

(define (cube x)(* x x x)) 
     
(define (simpson f a b n)
  
  (define h (/ (- b a) n))
  
  (define (y k) (f (+ a (* k h))))
  
  (define (factor k)
    (cond((or(= k 0)(= k n)) 1)
         ((= (remainder k 2) 0) 2)
         (else 4)))
  
  (define (next k)
    (+ k 1))
  
  (define (term k)
    (*(y k)(factor k)))
  
  (if(= (remainder n 2) 1)
     (error "n can't be a odd")
     (*(/ h 3)(sum term 0 next n))))

(simpson cube 0 1 100)
(simpson cube 0 1 1000)
(simpson cube 0 1 10000)

