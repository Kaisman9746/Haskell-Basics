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
   
Define a function rgbToHex :: (Int, Int, Int) -> String.
Use let bindings to format each color component as a two-character hex string.
Concatenate the three hex values into a single string.
Test your function with rgbToHex (255, 0, 127) and rgbToHex (0, 255, 64).

rgbToHex :: (Int, Int, Int) -> String
rgbToHex (r, g, b) = 
   let hexDigits = "0123456789ABCDEF"
      
       toHex n =
        let n' = max 0 (min 255 n)
            hi = n' `div` 16
            lo = n' `mod` 16
         in [hexDigits !! hi, hexDigits !! lo]
       
       rHex = toHex r
       gHex = toHex g
       bHex = toHex b
    in '#' : (rHex ++ gHex ++ bHex)
    
main :: IO ()
main = do 
 print $ rgbToHex (255, 0, 127)
 print $ rgbToHex (0, 255, 64)
   --output = Output: "#FF007F" "#00FF40"

   writing the code another short form can be done below 

   import Text.Printf (printf)

rgbToHex :: (Int, Int, Int) -> String 
rgbToHex (r, g, b) = printf "#%02X%02X%02X" r g b

main :: IO ()
main = do 
 print $ rgbToHex (255, 0, 127)
 print $ rgbToHex (0, 255, 64)
    --output = Output: "#FF007F" "#00FF40"

    HC3T4 - Task 4: Calculate the area of a triangle using Heron's formula
Define a function triangleArea :: Float -> Float -> Float -> Float.
Use let to calculate the semi-perimeter s.
Apply Heron’s formula: sqrt(s * (s - a) * (s - b) * (s - c)).
Test with triangleArea 3 4 5 and triangleArea 7 8 9

triangleArea :: Float -> Float -> Float -> Float
triangleArea x y z =
   let s = (x + y + z) / 2
    in sqrt(s * (s - x) * (s - y) * (s - z))
    
main :: IO ()
main = do 
 print (triangleArea 3 4 5)
 print (triangleArea 7 8 9)
    --output = 6.0, 26.832815
    
triangleArea :: Float -> Float -> Float -> Float
triangleArea x y z =
   let s = (x + y + z) / 2
    in sqrt(s * (s - x) * (s - y) * (s - z))
    
main :: IO ()
main = do 
 print (triangleArea 6 8 4)
 print (triangleArea 8 2 9)
  --output = 11.61895 7.310096

  HC3T6 - Advanced Task 6: Check leap year using if-then-else
Define isLeapYear :: Int -> Bool.
Use if-then-else to check:
Divisible by 400: True
Divisible by 100 but not 400: False
Divisible by 4: True
Otherwise: False
Test with isLeapYear 2000, isLeapYear 1900, and isLeapYear 2024.

isLeapYear :: Int -> Bool
isLeapYear year =
   if year `mod` 400 == 0
    then True
       else if year `mod` 100 == 0
          then False 
              else if year `mod` 4 == 0
                 then True
                    else False
                    
main :: IO ()
main = do 
 print (isLeapYear 2000) 
 print (isLeapYear 1900)
 print (isLeapYear 2024) 
   --Output = True False True 

