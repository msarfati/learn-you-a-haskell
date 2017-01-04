-- Channel 9 Erik Meijer Chapter 3
-- Type Signatures

myFunc :: (Int, Int) -> Bool
myFunc (1, 2) = True
myFunc (3, 4) = True
myFunc _ = False

-- Tuple function declaration
myFunc' :: (Int, [Char]) -> [Char]
myFunc' x = snd x

not' :: Bool -> Bool
not' False = True
not' True = False

-- Higher order functions have more than one argument.
-- Think of each argument as a lambda and one argument
-- This is called "currying"
add' :: Int -> Int -> Int
add' x y = x+y

addLambda' :: Int -> Int -> Int
addLambda' = \x -> \y -> x + y

addLambda :: (Int, Int) -> Int
addLambda = \(x,y) -> x+y

mult :: Int -> Int -> Int -> Int
mult x y z = x * y * z

-- 'a' in the following example is a type variable, may stand for any type
-- 'a' is considered polymorphic, or generic
goLeet :: a -> Int
goLeet x = 1337

length' :: [a] -> Int
length' x = length x

-- Get third element in tuple

trd :: (a, b, c) -> c
trd (a, b, c) = c
