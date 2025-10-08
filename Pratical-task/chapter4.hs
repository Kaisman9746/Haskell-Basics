Create a function weatherReport :: String -> String that takes a weather condition as a string (e.g., "sunny", "rainy", "cloudy") and returns a message describing the weather.
Use pattern matching to handle the following cases:
"sunny" → "It's a bright and beautiful day!"
"rainy" → "Don't forget your umbrella!"
"cloudy" → "A bit gloomy, but no rain yet!"
Any other input should return "Weather unknown".. 

--using pattern matching.... 

weatherReport :: String -> String 
weatherReport "sunny" = "It's a bright and beautiful day!"
weatherReport "rainy" = "Don't forget your umbrella!"
weatherReport "cloudy" = "A bit gloomy, but no rain yet!"
weatherReport_         = "Weather unknown"

main :: IO ()
main = do 
 putStrLn (weatherReport "sunny") 
 putStrLn (weatherReport "rainy") 
 putStrLn (weatherReport "cloudy")

 --output
--It's a bright and beautiful day!
--Don't forget your umbrella!
--A bit gloomy, but no rain yet!


--using if then else

weatherReport :: String -> String 
weatherReport w = 
 if w == "sunny"
  then "It's a bright and beautiful day!"
     else if w == "rainy"
           then "Don't forget your umbrella!"
              else if w == "cloudy" 
                    then "A bit gloomy, but no rain yet!"
                       else "Weather unknown"
                       
main :: IO ()
main = do 
 putStrLn (weatherReport "rainy") 
 putStrLn (weatherReport "sunny")
 putStrLn (weatherReport "cloudy")

--Output
Don't forget your umbrella!
It's a bright and beautiful day!
A bit gloomy, but no rain yet!

    --using guard format

weatherReport :: String -> String 
weatherReport w
 | w == "sunny"   = "It's a bright and beautiful day!"
 | w == "rainy"   =  "Don't forget your umbrella!"
 | w == "cloudy"  = "A bit gloomy, but no rain yet!"
 | otherwise    =   "Weather unknown"
 
main :: IO ()
main = do 
 putStrLn (weatherReport "sunny") 
 putStrLn (weatherReport "cloudy") 
 putStrLn (weatherReport "rainy") 
 putStrLn (weatherReport "cold") 


--Output:

--It's a bright and beautiful day!
--A bit gloomy, but no rain yet!
--Don't forget your umbrella!
--Weather unknown 

HC4T2 - Task 2: Define a dayType Function
Create a function dayType :: String -> String that determines if a given day of the week is a weekday or weekend.
"Saturday" and "Sunday" → "It's a weekend!"
Any other day of the week → "It's a weekday."
If an invalid day is provided, return "Invalid day".

--solution using pattern matching 

dayType :: String -> String 
dayType "Saturday" = "It's a weekend!"
dayType "Sunday"   = "It's a weekend!"
dayType "Monday"   = "It's a weekday."
dayType "Tuesday"  = "It's a weekday."
dayType "Wednesday" = "It's a weekday."
dayType "Thurday"  = "It's a weekday."
dayType "Friday"   = "It's a weekday."
dayType _           =  "Invalid day"

main :: IO ()
main = do 
 putStrLn (dayType "Saturday") 
 putStrLn (dayType "Sunday")
 putStrLn (dayType "Monday")
 putStrLn (dayType "Tuesday")
 putStrLn (dayType "Wednesday")
 putStrLn (dayType "Thursday")
 putStrLn (dayType "Friday")

--Output
It's a weekend!
It's a weekend!
It's a weekday.
It's a weekday.
It's a weekday.
Invalid day
It's a weekday.

 --same code using guards

dayType :: String -> String 
dayType d =
 | d == "Saturday"  = "It's a weekend!"
 | d == "Sunday"    = "It's a weekend!"
 | d == "Monday"    = "It's a weekday."
 | d == "Tuesday"   = "It's a weekday."
 | d == "Wednesday" = "It's a weekday."
 | d == "Thursday"  = "It's a weekday."
 | d == "Friday"    = "It's a weekday."
 | otherwise  =  "Invalid day"

main :: IO ()
main = do 
 putStrLn (dayType "Saturday") 
 putStrLn (dayType "Sunday")
 putStrLn (dayType "Monday")
 putStrLn (dayType "Tuesday")
 putStrLn (dayType "Wednesday")
 putStrLn (dayType "Thursday")
 putStrLn (dayType "Friday")

--Output
--It's a weekend!
--It's a weekend!
--It's a weekday.
--It's a weekday.
--It's a weekday.
--Invalid day
--It's a weekday.

--using if then else 

dayType :: String -> String 
dayType d = 
 if d == "Saturday" 
  then  "It's a weekend!"
     else if d == "Sunday"   
        then "It's a weekend!"
            else if d == "Monday"   
                  then  "It's a weekday."
                     else if d == "Tuesday"  
                           then  "It's a weekday." 
                              else if d == "Wednesday" 
                                    then "It's a weekday."
                                       else if d == "Thursday"
                                             then "It's a weekday."
                                                else if d == "Friday"   
                                                      then "It's a weekday."
                                                         else "Invalid day"

main :: IO ()
main = do 
 putStrLn (dayType "Saturday") 
 putStrLn (dayType "Sunday")
 putStrLn (dayType "Monday")
 putStrLn (dayType "Tuesday")
 putStrLn (dayType "Wednesday")
 putStrLn (dayType "Thursday")
 putStrLn (dayType "Friday")

     --Output:

--It's a weekend!
--It's a weekend!
--It's a weekday.
--It's a weekday.
--It's a weekday.
--It's a weekday.
--It's a weekday. 


dayType :: String -> String 
dayType d = 
 if d == "Saturday" then "It's a weekend!"
  else if d == "Sunday" then "It's a weekend!"
        else if d == "Monday" then "It's a weekday."
              else if d == "Tuesday" then "It's a weekday."
                    else if d == "Wednesday" then "It's a weekday."
                          else if d == "Thursday" then "It's a weekday."
                                else if d == "Friday" then "It's a weekday."
                                      else "Invalid day"
                                      
main :: IO () 
main = do 
 putStrLn (dayType "Saturday") 
 putStrLn (dayType "Sunday")
 putStrLn (dayType "Monday")
 putStrLn (dayType "Tuesday")
 putStrLn (dayType "Wednesday")
 putStrLn (dayType "Thursday")
 putStrLn (dayType "Friday")
 putStrLn (dayType "Christmas") 

  
--It's a weekend!
--It's a weekend!
--It's a weekday.
--It's a weekday.
--It's a weekday.
--It's a weekday.
--It's a weekday.
--Invalid day

HC4T3 - Task 3: Define a gradeComment Function
Write a function gradeComment :: Int -> String that takes a numerical grade and returns a comment based on the grade range:
90 - 100 → "Excellent!"
70 - 89 → "Good job!"
50 - 69 → "You passed."
0 - 49 → "Better luck next time."
Any other number → "Invalid grade".

   --using guard

gradeComment :: Int -> String 
gradeComment n
  | n `elem` [90..100] = "Excellent"
  | n `elem` [70..89]  = "Good job!"
  | n `elem` [50..60]  = "You passed."
  | n `elem` [0..49]   = "Better luck next time."
  | otherwise          = "Invalid grade"

main :: IO ()
main = do 
 putStrLn (gradeComment 95) 
 putStrLn (gradeComment 75)
 putStrLn
 (gradeComment 56)
 putStrLn (gradeComment -1grade

--Output
--Excellent
--Good job!
--You passed.
--Invalid grade

 --using if then else 
gradeComment :: Int -> String 
gradeComment n =
 if n >= 90 &&  n <= 100 then "Excellent"
  else if n >= 70 &&  n <= 89 then "Good job"
        else if n >= 50 &&  n <= 60 then "you passed"
              else if n >= 0 &&  n <= 49 then "Better luck next time."
                    else                 "Invalid grade"

main :: IO ()
main = do 
 putStrLn (gradeComment 95) 
 putStrLn (gradeComment 71)
 putStrLn (gradeComment 59)
 putStrLn (gradeComment (-15))


Output:

Excellent
Good job
you passed
Invalid grade

HC4T4 - Task 4: Rewrite specialBirthday using Pattern Matching
Rewrite the specialBirthday function using pattern matching instead of if-else statements.

 --using pattern matching 
specialBirthday :: Int -> String 
specialBirthday 1  = "First birthday"
specialBirthday 18 = "You are an adult"
specialBirthday 60 = "Finally, I can stop caring about new lingo!"
specialBirthday _  = "Nothing special"

main :: IO ()
main = do 
 putStrLn (specialBirthday 1) 
 putStrLn (specialBirthday 17) 
 putStrLn (specialBirthday 60) 
 putStrLn (specialBirthday 18) 
 
--Output:

--First birthday
--Nothing special
--Finally, I can stop caring about new lingo!
--You are an adult

HC4T5 - Task 5: Add a Catch-All Pattern with a Custom Message
Modify specialBirthday to include the age in the return message when it doesn’t match predefined cases.


--using pattern matching

specialBirthday :: Int -> String 
specialBirthday 1   = "First birthday"
specialBirthday 18  = "You are an adult"
specialBirthday 60  = "Finally, I can stop caring about new lingo!"
specialBirthday age = "Age " ++ show age ++ " Nothing a special birthday" 
specialBirthday _  = "Nothing special"



main :: IO ()
main = do 
 putStrLn (specialBirthday 1) 
 putStrLn (specialBirthday 35) 
 putStrLn (specialBirthday 60) 
 putStrLn (specialBirthday 18)

   --output
--First birthday
--Age 35 Nothing a special birthday
--Finally, I can stop caring about new lingo!
--You are an adult

HC4T6 - Task 6: Identify List Contents Using Pattern Matching
Create a function whatsInsideThisList that returns a string based on the number of elements in a list.

 --using pattern matching

whatsInsideThisList :: [Int] -> String 
whatsInsideThisList [] = "this is empty list"
whatsInsideThisList [x] = "this list has only one item:" ++ show x
whatsInsideThisList [x, y] = "the list has two items:" ++ show x ++ "and" ++ show y
whatsInsideThisList (x:xs) = "this list has first item and many other items:" ++ show x ++ " and others items" ++ show xs

main :: IO ()
main = do 
 putStrLn (whatsInsideThisList []) 
 putStrLn (whatsInsideThisList [1]) 
 putStrLn (whatsInsideThisList [1,2]) 
 putStrLn (whatsInsideThisList [1..100]) 


--Output:

--this is empty list
--this list has only one item:1
--the list has two items:1and2
--this list has first item and many other --items:1 and others --items[2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100]

   --using if then else
whatsInsideThisList :: [Int] -> String
whatsInsideThisList lst =
  if null lst then
    "This is an empty list"
  else if length lst == 1 then
    "The list has only one item: " ++ show (head lst)
  else if length lst == 2 then
    "The list has two items: " ++ show (head lst) ++ " and " ++ show (last lst)
  else
    "The list has a first item and many others: " ++ show (head lst) ++ " and others " ++ show (tail lst)

main :: IO ()
main = do
  putStrLn (whatsInsideThisList [])
  putStrLn (whatsInsideThisList [1])
  putStrLn (whatsInsideThisList [1, 2])
  putStrLn (whatsInsideThisList [1..10])


 --Output:

--This is an empty list
--The list has only one item: 1
--The list has two items: 1 and 2
--The list has a first item and many others: 1 and others [2,3,4,5,6,7,8,9,10]

  --using guard 

whatsInsideThisList :: [Int] -> String
whatsInsideThisList lst
  | null lst = "This is an empty list"
  | length lst == 1 = "The list has only one item: " ++ show (head lst)
  | length lst == 2 = "The list has two items: " ++ show (head lst) ++ " and " ++ show (last lst)
  | otherwise = "The list has a first item and many others: " ++ show (head lst) ++ " and others " ++ show (tail lst)

main :: IO ()
main = do
  putStrLn (whatsInsideThisList [])
  putStrLn (whatsInsideThisList [1])
  putStrLn (whatsInsideThisList [1, 2])
  putStrLn (whatsInsideThisList [1..10])



--Output:

--This is an empty list
--The list has only one item: 1
--The list has two items: 1 and 2
--The list has a first item and many others: 1 and others [2,3,4,5,6,7,8,9,10]

HC4T7 - Task 7: Ignore Elements in a List
Modify firstAndThird to return only the first and third elements of a list, ignoring others.

   --using pattern matching

firstAndThird :: [Int] -> String 
firstAndThird (x:_:y:_) =
 "The first number is " ++ show x ++ " and " ++ "The third number is " ++ show y
firstAndThird _         =  "too short numbers to indentify first and third numbers"

main :: IO ()
main = do 
 putStrLn (firstAndThird [9,6,4]) 
 putStrLn (firstAndThird [1,2,3,4,5,6,7,8,9,10]) 
 putStrLn (firstAndThird []) 
 putStrLn (firstAndThird [20,30,40,50,60, 70,80,90,100]) 
 putStrLn (firstAndThird [1,2,-3,4])

--Output:

--The first number is 9 and The third number is 4
--The first number is 1 and The third number is 3
--too short numbers to indentify first and third numbers
--The first number is 20 and The third number is 40
--The first number is 1 and The third number is -3

HC4T8 - Task 8: Extract Values from Tuples
Create a function describeTuple that extracts values from a tuple and returns a string.

  --using pattern matching

describeTuple :: (Int, Int,String) -> String 
describeTuple  (a,b, c) =
 "the first number is " ++ show a ++
 " and the second number is " ++ show b ++ 
 " while the third word is " ++ c 
describeTuple _  = 
 "anything else is not worth to be our numbers and words. "

main :: IO ()
main = do 
 putStrLn (describeTuple (5, 10, "apple")) 
 putStrLn (describeTuple (1, 6, "orange")) 
 putStrLn (describeTuple (-2,-6,"mango"))
 


Output:

the first number is 5 and the second number is 10 while the third word isapple
the first number is 1 and the second number is 6 while the third word isorange
the first number is -2 and the second number is -6 while the third word ismango