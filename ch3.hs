-- Chapter 3
--
-- Pattern Matching
--
lucky :: Int -> String
lucky 7 = "Lucky number 7!"
lucky 13 = "Lucky number 13!"
lucky x = "Number " ++ show x ++ "? No luck."
