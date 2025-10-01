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

HC3T7 - Advanced Task 7: Determine the season based on the month using guards
Define season :: Int -> String.
Use guards to return:
12, 1, 2 → "Winter"
3, 4, 5 → "Spring"
6, 7, 8 → "Summer"
9, 10, 11 → "Autumn"
Test with season 3, season 7, and season 11.

season :: Int -> String 
season m
 | m == 12 || m == 1 || m == 2 = "winter" 
 | m == 3 || m == 4 || m == 5 = "spring"
 | m == 6 || m == 7 || m == 8 = "summer"
 | m == 9 || m == 10 || m == 11 = "Autumn"
 | otherwise = "invalid month"
 
 
main :: IO ()
main = do 
 putStrLn (season 3) 
 putStrLn (season 7) 
 putStrLn (season 11)
   --Output: spring summer Autumn


HC3T8 - Advanced Task 8: Calculate BMI and return category using where
Define bmiCategory :: Float -> Float -> String.
Use where to calculate BMI: bmi = weight / height^2.
Use guards to classify BMI:
<18.5: "Underweight"
18.5 to 24.9: "Normal"
25 to 29.9: "Overweight"
≥30: "Obese"
Test with bmiCategory 70 1.75 and bmiCategory 90 1.8.

bmiCategory :: Float -> Float -> String 
bmiCategory weight height

 | bmi < 18.5          = "Underweight"
 | bmi >= 18.5 && bmi <= 24.9 = "Normal"
 | bmi >= 25   && bmi <= 29.9     = "Overweight"
 | bmi >= 30           = "Obese"
 | otherwise           = "invalid weight"
 
 where 
  bmi = weight / (height^2) 
  
main :: IO ()
main = do 
 putStrLn (bmiCategory 70 1.75) 
 putStrLn (bmiCategory 90 1.8)
   --output: Normal Overweight
 
HC3T9 - Advanced Task 9: Find the maximum of three numbers using let
Define maxOfThree :: Int -> Int -> Int -> Int.
Use let to store intermediate max values.
Return the maximum of the three numbers.
Test with maxOfThree 10 20 15 and maxOfThree 5 25 10.

maxOfThree :: Int -> Int -> Int -> Int 
maxOfThree x y z =
  let xyMax = max x y
   in max xyMax z
    
main :: IO ()
main = do 
 print $ maxOfThree 10 20 15
 print $ maxOfThree 5 25 10
   --output: 20 25 
 
maxOfThree :: Int -> Int -> Int -> Int 
maxOfThree a b c =
 let bigger1 = max a b
     bigger2 =max bigger1 c 
  in bigger2
  
main :: IO ()
main = do 
 print $ maxOfThree 10 20 15
 print $ maxOfThree 5 25 10
   --output: 20 25

