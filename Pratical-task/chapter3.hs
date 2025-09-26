HC3T1 - Task 1: Check if a number is positive, negative, or zero
Define a function checkNumber :: Int -> String.
Use an if-then-else statement to check if the number is positive, negative, or zero.
Return "Positive", "Negative", or "Zero" accordingly.
Test your function with checkNumber 5, checkNumber (-3), and checkNumber 0.

grade :: Int -> String
grade x = 
 if x >= 90 && x <= 99
  then "A"
      else if x >= 80 && x <= 89
         then "B"
            else if x >= 70 && x <= 79
               then "C"
                  else if x >= 60 && x <= 69
                     then "D"
                        else if x >= 50 && x <= 60 
                           then "F"
                              else "invalid grade"
main :: IO ()
main = do 
 putStrLn (grade 95) 
 putStrLn (grade 75)
 putStrLn (grade 50)
 putStrLn (grade 81)
 putStrLn (grade 68)
 putStrLn (grade 30)
 putStrLn (grade 58) 





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
