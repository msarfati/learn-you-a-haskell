-- Chapter 3
--
-- Pattern Matching
--
lucky :: Int -> String
lucky 7 = "Lucky number 7!"
lucky 13 = "Lucky number 13!"
lucky x = "Number " ++ show x ++ "? No luck."

-- Pattern Matching with Recursion
factorial :: Int -> Int
-- factorial :: Double -> Double 
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName x = show x ++ "? Anything."

-- Pattern matching with tuples

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- Pattern Matching with Lists and List Comprehensions
xs = [(1,3),(4,3),(2,4),(5,3),(5,6),(3,1)]
myListComp = [a+b | (a,b) <- xs]

head' :: [a] -> a
head' [] = error "Can't call head on empty list."
head' (x:_) = x

-- As-patterns
firstLetter :: String -> String
firstLetter "" = "Empty str!"
firstLetter all@(x:xs) = "First letter of " ++ all ++ " is " ++ [x]

-- Guards
--
bmiTell :: Double -> String
bmiTell bmi
    | bmi <= 18.5 = "Underweight."
    | bmi <= 25.0 = "Good."
    | bmi <= 30.0 = "Overweight"
    | otherwise = "Obese."

bmiTell' :: Double -> Double -> String
bmiTell' weight height
    | weight / height ^ 2 <= 18.5 = "Underweight."
    | weight / height ^ 2 <= 25.0 = "Good."
    | weight / height ^ 2 <= 30.0 = "Overweight"
    | otherwise = "Obese."

-- Guards with Where
bmiTell'' :: Double -> Double -> String
bmiTell'' weight height
    | bmi <= 18.5 = "Underweight."
    | bmi <= 25.0 = "Good."
    | bmi <= 30.0 = "Overweight"
    | otherwise = "Obese."
    where bmi = weight / height ^ 2

-- Guards with Where again, defining more variables after the guards
bmiTell''' :: Double -> Double -> String
bmiTell''' weight height
    | bmi <= skinny = "Underweight."
    | bmi <= normal = "Good."
    | bmi <= overweight = "Overweight"
    | otherwise = "Obese."
    where bmi = weight / height ^ 2
          skinny    = 18.5
          normal    = 25.0
          overweight= 30.0

max' :: (Ord a) => a -> a -> a
max' a b
    | a <= b    = b
    | otherwise = a

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a == b    = EQ
    | a <= b    = LT
    | otherwise = GT

-- Where scope
-- Here it needs to pull from global scope because where bindings aren't shared
-- across function bodies of different patterns.

niceGreeting :: String
niceGreeting = "Hello"

badGreeting :: String
badGreeting = "Pfft"

greet :: String -> String
greet "John" = niceGreeting ++ " John!"
greet "Mary" = niceGreeting ++ " Mary!"
greet name = badGreeting ++ " " ++ name

-- Where Pattern Matching
initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname
jc_denton_initials = initials "JC" "Denton"

-- Functions in where blocks

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2

-- Let expressions
cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea

letExample = 4 * (let a = 9 in a + 1) + 2
letExample2 = [let square x = x * x in (square 5, square 3, square 2)]
multiLetExample = (let a = 100; b = 200; c = 300 in a*b*c, let foo="Hey "; bar = "there!" in foo ++ bar)
multiLetExample2 = (let (a,b,c) = (1,2,3) in a+b+c) * 100

-- Let expressions are local in scope, cannot be used against guards
--
