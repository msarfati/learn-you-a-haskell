-- Functions
-- Invoke this by:
-- ghc --make derek-banes2.hs

main = do 
    putStrLn "What's your name?"
    name <- getLine
    putStrLn ("Hello " ++ name)
