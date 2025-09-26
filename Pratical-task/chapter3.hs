grade :: Int -> [Char]
grade x 
 | x >= 90 && x <= 99 = "A"
 | x >= 80 && x <= 89 = "B"
 | x >= 70 && x <= 79 = "C"
 | x >= 60 && x <= 69 = "D"
 | x >= 50 && x <= 60 =  "F"
 | otherwise = "invalid grade"
 
main :: IO ()
main = do 
 putStrLn (grade 95) 
 putStrLn (grade 72) 
 putStrLn (grade 50)
