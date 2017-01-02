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
