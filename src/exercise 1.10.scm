; Ackerman's function
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))


;What are the values of the following expressions?

(A 1 10)
(A (- 1 1) (A 1 (-10 1)))
(A 0 (A 1 9))
(A 0 (A (- 1 1) (A 1 (- 9 1))))
(A 0 (A 0 (A 1 8)))
(A 0 (A 0 (A 0 (A 1 7))))
(A 0 (A 0 (A 0 (A 0 (A 1 6)))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1)))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 2))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4)))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 4)))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (* 2 8))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16)))))
(A 0 (A 0 (A 0 (A 0 (A 0 (* 2 16)))))
(A 0 (A 0 (A 0 (A 0 (A 0 32))))
(A 0 (A 0 (A 0 (A 0 (* 2 32))))
(A 0 (A 0 (A 0 (A 0 64)))
(A 0 (A 0 (A 0 (* 2 64)))
(A 0 (A 0 (A 0 128))
(A 0 (A 0 (* 2 128))
(A 0 (A 0 256)
(A 0 (* 2 256)
(A 0 512)
(* 2 512)   
1024   
   

(A 2 4)
(A (- 2 1) (A 2 (- 4 1)))
(A 1 (A 2 3))
(A 1 (A (- 2 1) (A 2 (- 3 1))))
(A 1 (A 1 (A 2 2)))
(A 1 (A 1 (A (- 2 1) (A 2 (- 2 1)))))
(A 1 (A 1 (A 1 (A 2 1))))
(A 1 (A 1 (A 1 2)))
(A 1 (A 1 (A (- 1 1) A (1 (- 2 1)))))
(A 1 (A 1 (A 0 A (1 1))))
(A 1 (A 1 (A 0 2)))
(A 1 (A 1 (* 2 2)))
(A 1 (A 1 4))
(A 1 (A (- 1 1) (A 1 (- 4 1))))
(A 1 (A 0 (A 1 3)))
(A 1 (A 0 (A (- 1 1) (A 1 (- 3 1)))))
(A 1 (A 0 (A 0 (A 1 2))))
(A 1 (A 0 (A 0 (A (- 1 1) (A 1 (- 2 1))))))
(A 1 (A 0 (A 0 (A 0 (A 1 1)))))
(A 1 (A 0 (A 0 (A 0 2))))
(A 1 (A 0 (A 0 (* 2 2))))
(A 1 (A 0 (A 0 4)))
(A 1 (A 0 (* 2 4)))
(A 1 (A 0 8))
(A 1 (* 2 8))
(A 1 16)
....
from above
(^ 2 16)
65536


(A 3 3)
(A (- 3 1) (A 3 (- 3 1)))
(A 2 (A 3 2))
(A 2 (A (- 3 1) (A 3 (- 2 1))))
(A 2 (A 2 (A 3 1)))
(A 2 (A 2 2))
(A 2 (A (- 2 1) (A 2 (- 2 1))))
(A 2 (A 1 (A 2 1)))
(A 2 (A 1 2))
from above
(A 2 (^ 2 2))
(A 2 4))
from above
65536


Consider the following procedures, where A is the procedure defined above:

(define (f n) (A 0 n))
2n
(define (g n) (A 1 n))
2^n
(define (h n) (A 2 n))
if n = 0,
0
if n = 1,
(A 2 1)
2
if n = 2,
(A 2 2)
(A (- 2 1) (A 2 (- 2 1)))
(A 1 (A 2 (- 2 1)))
(A 1 (A 2 1))
(A 1 (h 1))
from definition of  g(n) above with n = (h 1)
(^ 2 (h 1))

if n = 3,
(A 2 3)
(A (- 2 1) (A 2 (- 3 1)))
(A 1 (A 2 2))
(A 1 (h 2))
from definition of  g(n) above with n = (h 2)
(^ 2 (h 2))

if n = 4,
(A 2 4)
(A (- 2 1) (A 2 (- 4 1)))
(A 1 (A 2 3))
(A 1 (h 3))
(^ 2 (h 3))
65536

Thus, in mathematical notation
h(n)=
  0 for n = 0,
  2 for n = 1,
  (2^(h(n-1))) for n > 1
