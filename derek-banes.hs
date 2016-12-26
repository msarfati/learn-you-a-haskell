-- From https://www.youtube.com/watch?v=02_H3LjqMr8
import Data.List
import System.IO

-- Data types
-- Int range: -2^63 to +2^63
maxInt = maxBound :: Int
minInt = minBound :: Int
-- Integer - Unbounded whole number, ie, as big as your memory can hold
-- Float - single precision floating point
-- Double - precision up to 11 points
-- Bool - True or False
-- Char - single unicode characters
-- Tuple - many different data types, usually only two values
--

-- Sums all values from 1 to 1000.
sumOfNums = sum[1..1000]

-- Modulus
modEx = mod 5 4
modEx2 = 5 `mod` 4  -- Interprets command as infix rather than prefix notation

negNumEx = 5 + (-4) -- Needs parenthesis so it doesnt get confused about neg operator

-- Type  :t sqrt  to see more about the function
num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)

-- fromIntegral used to convert from floating point to integer
