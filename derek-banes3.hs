-- Lambdas
import Data.List
import System.IO

double1To10 = map (\x -> x * 2) [1..10] -- \ is the anonymous lambda function

-- Not equals is /=
-- Logical operators: && || not
--

-- If statements
--
-- If statements must always have an else clause
--
-- This function doubles only the even numbers
doubleEvenNumber y =
    if (y `mod` 2 /= 0)
        then y
        else y * 2

-- Case statements
getClass :: Int -> String

getClass n = case n of
    5 -> "Go to Kindergarten"
    6 -> "Go to elementary school"
    _ -> "Go away."

-- Enumation types

data BaseballPlayer = Pitcher
                    | Catcher
                    | Infielder
                    | Outfield
                deriving Show
barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True

barryInOf = print(barryBonds Outfield)
