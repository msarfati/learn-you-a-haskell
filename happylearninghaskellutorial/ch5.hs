-- Chapter 5
lambdaTrue = (\x -> True) False

magicCoin :: Bool -> Bool
magicCoin = (\_ -> True)

newCoin :: Bool
newCoin = magicCoin False

newCoinAgain :: Bool
newCoinAgain = magicCoin newCoin

newCoinAgain' :: Bool
newCoinAgain' = magicCoin (magicCoin False)

magicCoin' :: Bool -> Bool
magicCoin' _ = True

not' :: Bool -> Bool
not' False = True
not' True = False

-- Functions returning functions

magicBool :: Bool -> (Bool -> Bool)
magicBool = \_  -> magicCoin
magicBoolCoin = magicBool False False

magicBool'1 :: Bool -> Bool -> Bool
magicBool'1 = \_ -> \_ -> True

magicBool'2 :: Bool -> Bool -> Bool
magicBool'2 = \_ _ -> True

magicBool'' :: Bool -> Bool -> Bool
magicBool'' _ _ = True

eitherTrue :: Bool -> Bool -> Bool
eitherTrue False False = True
eitherTrue _     _     = True

-- The process of making a function return a function is called 'currying'
--

plus :: Int -> Int -> Int
plus x y = x + y

plus' :: Int -> Int -> Int
plus' = \x -> \y -> x + y

increment' :: Int -> Int
increment' = (\x -> \y -> x + y) 1

additionResult :: Int
additionResult = plus 100 25

-- My examples

sub :: Int -> Int -> Int
sub x y = x - y

sub' :: Int -> Int -> Int
sub' = \x -> \y -> x - y
