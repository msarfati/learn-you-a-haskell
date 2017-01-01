-- Chapter 4: Recursion
--
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

fibSequence = [fib n | n <- [1..15]]
