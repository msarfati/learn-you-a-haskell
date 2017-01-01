-- Chapter 4: Recursion
--
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

fibSequence = [fib n | n <- [1..15]]

-- Maximum
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Maximum cannot be of an empty list."
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

minimum' :: (Ord a) => [a] -> a
minimum' [] = error "Minimum cannot be of an empty list."
minimum' [x] = x
minimum' (x:xs) = min x (minimum' xs)

-- Replicate
replicate' :: Int -> a -> [a]
replicate' n x
    | n <= 0   = []
    | otherwise= x : replicate' (n-1) x

-- Take
take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0    = []
take' _ []      = []
take' n (x:xs)  = x : take' (n-1) xs

-- Reverse
reverse' :: [a] -> [a]
reverse' [] = []
reverse; (x:xs) = reverse' xs ++ [x]
