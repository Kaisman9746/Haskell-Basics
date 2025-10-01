IHC3T1 - Task 1: Check if a number is positive, negative, or zero
Define a function checkNumber :: Int -> String.
Use an if-then-else statement to check if the number is positive, negative, or zero.
Return "Positive", "Negative", or "Zero" accordingly.
Test your function with checkNumber 5, checkNumber (-3), and checkNumber 0.

checkNumber :: Int -> String 
checkNumber x =
   if x > 0
    then "positive"
       else if x < 0 
          then "negative"
             else "zero"
           
main :: IO ()
main = do 
 putStrLn  (checkNumber (-3)) 
 putStrLn  (checkNumber 5) 
 putStrLn  (checkNumber 0) 
    
--output negative positive zero
           
HC3T2 - Task 2: Determine the grade based on a score using guards
Define a function grade :: Int -> String.
Use guards (|) to classify scores into grades:
90 and above: "A"
80 to 89: "B"
70 to 79: "C"
60 to 69: "D"
Below 60: "F"
Test your function with grade 95, grade 72, and grade 50.

using if then else 

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
    --output = A
C
F
B
D
invalid grade
F

below is the answer writing the same code using guard 

HC3T2 - Task 2: Determine the grade based on a score using guards
Define a function grade :: Int -> String.
Use guards (|) to classify scores into grades:
90 and above: "A"
80 to 89: "B"
70 to 79: "C"
60 to 69: "D"
Below 60: "F"
Test your function with grade 95, grade 72, and grade 50.

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
   --Output: A C F
