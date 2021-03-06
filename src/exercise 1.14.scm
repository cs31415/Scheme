;Exercise 1.14.  Draw the tree illustrating the process generated by the count-change procedure of section 1.2.2 in making change for 11 cents. What are ;the orders of growth of the space and number of steps used by this process as the amount to be changed increases?
 

;Note: I am going to analyze my own count function, not the textbook one.


(define (comb coins total)
  (let ((ncombs 0))
    (define (comb-iter coins total solution idx q)
      ; c is the coin from coins list with index idx, the coin that will be used for the current call
      (let* ((c (list-ref coins idx)) (qc (if (= -1 q) (quotient total c) q)) (r (- total (* qc c))))
        (begin
          (display "(comb-iter ")
          (write coins)
          (display (string-append " " (number->string total) " "))
          (write solution)
          (display (string-append " " (number->string idx) " " (number->string q) ")"))
          (newline)
          (if (zero? r) 
              (begin 
                (set! ncombs (+ 1 ncombs))
                ;(write (append solution (list qc))) ; print solution if target reached
                ;(newline)
                )
              ; if target not reached, then move on to next coin, duly adjusting the total
              (if (< idx (- (length coins) 1)) ; making sure index into list is valid 
                  ; call comb for the next coin
                  (comb-iter coins (- total (* qc c)) (append solution (list qc)) (+ 1 idx) -1)))
          ; count down the coin quantity to 0 for alternate possibilities
          (if (> qc 0)  
              ; decrement quantity for current coin and recalculate possibilities
              (comb-iter coins total solution idx (- qc 1))))))
    (comb-iter coins total () 0 -1)
    (newline)
    (display (string-append (number->string ncombs) " combinations."))))

(comb '(10 5 1) 11)

(comb-iter (10 5 1) 11 () 0 -1)
(comb-iter (10 5 1) 1 (1) 1 -1)
(comb-iter (10 5 1) 1 (1 0) 2 -1)
(comb-iter (10 5 1) 1 (1 0) 2 0)
(comb-iter (10 5 1) 11 () 0 0)
(comb-iter (10 5 1) 11 (0) 1 -1)
(comb-iter (10 5 1) 1 (0 2) 2 -1)
(comb-iter (10 5 1) 1 (0 2) 2 0)
(comb-iter (10 5 1) 11 (0) 1 1)
(comb-iter (10 5 1) 6 (0 1) 2 -1)
(comb-iter (10 5 1) 6 (0 1) 2 5)
(comb-iter (10 5 1) 6 (0 1) 2 4)
(comb-iter (10 5 1) 6 (0 1) 2 3)
(comb-iter (10 5 1) 6 (0 1) 2 2)
(comb-iter (10 5 1) 6 (0 1) 2 1)
(comb-iter (10 5 1) 6 (0 1) 2 0)
(comb-iter (10 5 1) 11 (0) 1 0)
(comb-iter (10 5 1) 11 (0 0) 2 -1)
(comb-iter (10 5 1) 11 (0 0) 2 10)
(comb-iter (10 5 1) 11 (0 0) 2 9)
(comb-iter (10 5 1) 11 (0 0) 2 8)
(comb-iter (10 5 1) 11 (0 0) 2 7)
(comb-iter (10 5 1) 11 (0 0) 2 6)
(comb-iter (10 5 1) 11 (0 0) 2 5)
(comb-iter (10 5 1) 11 (0 0) 2 4)
(comb-iter (10 5 1) 11 (0 0) 2 3)
(comb-iter (10 5 1) 11 (0 0) 2 2)
(comb-iter (10 5 1) 11 (0 0) 2 1)
(comb-iter (10 5 1) 11 (0 0) 2 0)

As we can see, for every coin in the list, there are n/c possible values, c being the value of the coin.
Thus, the number of possible combinations is n/c1 * n/c2 * n/c3 * ... n/ck if there are k coins.
i.e. The number of steps required is theta(n^k) and the space is theta(1) (linear iterative)



