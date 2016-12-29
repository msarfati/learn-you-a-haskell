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
-- circumference 4 == 25.13274122871834
--
-- Comparison - returns an Ord type class of either: LT, GT or EQ
compareResult = 4 `compare` 5

-- "Show" are represented as strings.
-- "Read" is the inverse of "Show" -- takes a string and interprets it as a literal
sum8s = read "8.2" + 8.8
-- Above forces Haskell interpreter to do a type inference, and then guess that the
-- string is a float
--
-- But we can interpret the string directly as a literal like this:
num5 = read "5" :: Int
num5Float = read "5" :: Float
readList = read "[1,2,3,4]" :: [Int]
readTuple = read "(3, 'a')" :: (Int, Char)

-- Enum type class
exEnum = [1..10]
exEnum2 = [LT..GT]
succeedB = succ 'B'

-- Bounded type classes

