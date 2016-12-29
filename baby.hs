-- Comment
{- Multiline
 - Comment over here
-}
doubleMe x = x + x
doubleUs x y = x * 2 + y * 2

doubleSmallNumber x = if x > 100
                        then x
                        else x*2
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

sqrMe x = x * x

-- List comprehensions
powersOf2 = [2**x | x <- [1..15]]
filteredDoubleEven = [x*2 | x <- [1..10], x*2 >= 12]
remainderDividedBy7 = [x | x <- [50..100], x `mod` 7 == 3]

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
boomBangResult = boomBangs [7..13]

listCompExceptFew = [x | x <- [10..20], x /=13, x/=15, x/=19]

listCompDiffLists = [x+y | x <- [1,2,3], y <- [10,100,1000]]

-- List comprehension of words
nouns = ["hobo","frog","pope"]
adjectives = ["lazy", "grouchy", "scheming"]
wordStew = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

length' xs = sum [1 | _ <- xs]

removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

-- Tuples
myTupleList = [(1,2), (3,4), (5,6)]
-- This raises an exception:
-- [(1,2), (1,2,3), (1,2)] All tuples in list must be of the same length

myZip = zip [1,2,3] [4,5,6]
myZip2 = zip [1..3] ["one", "two", "three"]

-- All possible triangles between ranges 1 and 10
triples = [(a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10]]
-- All combinations of Pythagorean theorem friendly triangles:
rightTriangles = [(a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2]
rightTriangles' = [(a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a+b+c == 24]
