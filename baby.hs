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

powersOf2 = [2**x | x <- [1..15]]
filteredDoubleEven = [x*2 | x <- [1..10], x*2 >= 12]
remainderDividedBy7 = [x | x <- [50..100], x `mod` 7 == 3]
