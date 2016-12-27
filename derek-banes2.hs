import Data.List
import System.IO

-- Type declaration:
-- Given an Int, perform on an Int and return an Int
addMe :: Int -> Int -> Int

-- Creating a function in Haskell:
-- funcName param1 param2 = operations (returned value)

addMe x y = x + y

sumMe x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)

addTuplesResult = addTuples (1,2) (3,4)

whatAge :: Int -> String
whatAge 16 = "Drive"
whatAge 18 = "Vote"
whatAge 21 = "Drink"
whatAge x = "Unknown"

-- Recursion with Factorials
--
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

factorialOf5 = factorial 5

productFactorial n = product [1..n]


-- Guards (?)
isOdd :: Int -> Bool

isOdd n
    | n `mod` 2 == 0 = False
    | otherwise = True

isEven n = n `mod` 2 == 0


whatGrade :: Int -> String

whatGrade age
    | (age >= 5) && (age <= 6) = "Kindergarten"
    | (age > 6) && (age <= 10) = "Elementary school"
    | (age > 10) && (age <= 14) = "Middle school"
    | otherwise = "Go to college"

-- Where clause
batAvgRating :: Double -> Double -> String

batAvgRating hits atBats
    | avg <= 0.200 = "Terrible Batting Average"
    | avg <= 0.250 = "Average"
    | avg <= 0.280 = "Pretty good"
    | otherwise = "Superstar"
    where avg = hits / atBats
