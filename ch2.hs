-- Chapter 2
-- Type declarations
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

-- Type declaration changed float into double precision
circumference' :: Double -> Double
circumference' r = 2 * pi * r
-- circumference 4 == 25.132741228718345
