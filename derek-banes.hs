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

numPi = pi
truncatedNum = truncate 9.999
roundedNum = round 9.999
ceilingNum = ceiling 9.999
floorNum = floor 9.999

-- also supports sin, cos, tan, asin, sinh, asinh

-- LISTS --
-- --------
-- List contruction: : is the cons operator, glues them together into a list
favNums  = 2 : 4 : 6 : 66 : []

-- Iterate over all even numbers
evenNumbers = [2,4..20] 
letterList = ['A'..'Z']

-- Infinite list
myInfiniteList = [1,2..]
fromMyInfiniteList = myInfiniteList  !! 5

-- Repeated lists
--
repeatedList = repeat 4
setTenThrees = replicate 10 3
cycleList = take 10 (cycle [1,2,3])

-- List comprehensions
listTimes2 = [x * 2 | x <- [1..10]]
listTimes3 = [x * 3 | x <- [1..30], x * 3 <= 50]
dividBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]

-- Sorting and Filtering
sortedList = sort [9, 4, 3, 1, 8, 5]
sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]
listBiggerThan5 = filter (> 5) [6,3,1,2,3,5]
evensUpTo20 = takeWhile (<= 20) [2,4..]
multOfList = foldl (*) 1 [2,3,4,5]

-- List Comprehensions
pow3List = [3^n | n <- [1..10]]
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]

-- Tuples
randTuple = (1, "Asdf", True)
bobSmith = ("Bob Smith", 55)
bobsName = fst bobSmith
bobsAge = snd bobSmith

names = ["Bob", "Mary", "Jim"]
addresses = ["1234 Springfield Ave", "454 Main Street", "95 5th Street"]

namesNAddresses = zip names addresses

