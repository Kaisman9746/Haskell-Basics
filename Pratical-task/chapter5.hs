--HC5T1: Using applyTwice
--Define a function that takes a function and --an integer, then applies the function three --times to the integer.


--applyThrice :: (Int -> Int) -> Int -> Int
--applyThrice f x = f (f (f x))

main :: IO ()
main = do 
 print $ (applyThrice (+3) 5) 
 print $ (applyThrice (*2) 3) 
 print $ (applyThrice (+7) 7) 
 print $ (applyThrice (*10) 5)

--Output:

14
24
28
5000

--using division sigh 
applyThrice :: (Float -> Float) -> Float -> Float 
applyThrice f x = f (f (f x))
 
main :: IO ()
main = do 
 print (applyThrice (/5) 50)
 print (applyThrice (/2) 30)
 print (applyThrice (/2) 8)

--Output

0.4
3.75
1.0

Use the filter function to extract all odd numbers from a given list of integers from 1 to 30.

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter p (x:xs)
 | p x        = x : myFilter p xs
 | otherwise  = myFilter p xs
 
main :: IO ()
main = print (myFilter odd [1..30])

--Output:

--[1,3,5,7,9,11,13,15,17,19,21,23,25,27,29]

-usinga filter in another form 

filterOdd :: [Int] -> [Int]
filterOdd = filter odd 

filterEven :: [Int] -> [Int]
filterEven = filter even 

main :: IO ()
main = do 
 print (filterOdd [1..30])
 print (filterEven [1.. 30])

--Output:

--[1,3,5,7,9,11,13,15,17,19,21,23,25,27,29]
--[2,4,6,8,10,12,14,16,18,20,22,24,26,28,30]

Write a function using any that checks if a list of words contains any word that starts with an uppercase letter.

import Data.Char (isUpper) 

startWithUpper :: String -> Bool
startWithUpper word = not (null word) && isUpper (head word)

findAnyUpperCaseWord :: [String] -> Bool 
findAnyUpperCaseWord = any startWithUpper

main :: IO ()
main = do 
 print (findAnyUpperCaseWord ["Taiwo", "Orangee"])
 print (findAnyUpperCaseWord ["baby Zillion", "baba Zillion"])
 print (findAnyUpperCaseWord ["Head boy", "head Girl"])
 print (findAnyUpperCaseWord ["vanity upon vanity","such is Life"])

--Output:

--True
--False
--True
--False

import Data.Char (isUpper)
startsWithUpper :: String -> Bool
startsWithUpper word = not (null word) && isUpper (head word)

findAnyUpper :: [String] -> Bool
findAnyUpper = any startsWithUpper

main :: IO ()
main = do 
 print (findAnyUpper ["Apple", "Rice", "Teslim"])

--Output 
--True

import Data.Char (isUpper)
startsWithUpper :: String -> Bool
startsWithUpper word = not (null word) && isUpper (head word)

findAnyUpper :: [String] -> Bool
findAnyUpper = any startsWithUpper

main :: IO ()
main = do 
 print (findAnyUpper ["blessing", "school", " air Force"])

--Output 
Force

--using lambda format

import Data.Char (isUpper)

findAnyUpper :: [String] -> Bool
findAnyUpper = any (\w -> not (null w) && isUpper (head w)) 

main :: IO ()
main = do 
 print (findAnyUpper ["Apple", "Orange", "Blue", "Car"])

--Output 
True

import Data.Char (isUpper)

findAnyUpper :: [String] -> Bool
findAnyUpper = any (\w -> not (null w) && isUpper (head w)) 

main :: IO ()
main = do 
 print (findAnyUpper ["apple", "orange", "blue", "car Charger "])
 
 --Output 
  False

Rewrite the following function using a lambda function:
biggerThan10 x = x > 10

biggerThan10 :: Int -> Bool
biggerThan10 x = x > 10

main :: IO ()
main = do 
 print (biggerThan10 15True

--Output
  True
--using lambda format 

biggerThan10 :: Int -> Bool
biggerThan10 = \x -> x > 10

main :: IO ()
main = do 
 print (biggerThan10 15) 
 print (biggerThan10 9)
 print (biggerThan10 10)

Output 

True 
False 
False


Create a function multiplyByFive that uses partial application to multiply any number by 5.


multiplyByFive :: Int -> Int 
multiplyByFive = (5*)

main :: IO ()
main = do 
 print (multiplyByFive 10) 
 print (multiplyByFive 2)
 print (multiplyByFive 3)
 print (multiplyByFive 7)

--Output:

50
10
15
35


multiplyByFive :: Int -> Int
multiplyByFive x = x * 5

main :: IO ()
main = do 
 print (multiplyByFive 2)

--output 
  10


Use function composition (.) to create a function that takes a list of numbers and returns their squares filtered to only keep the even ones.


squareEven :: [Int] -> [Int]
squareEven = filter even . map (^2)

main :: IO ()
main = do 
 print (squareEven [1,2,3,4,5,6,7,8,9,10]) 

Output:

[4,16,36,64,100]


--trying it with odd

squareEven :: [Int] -> [Int]
squareEven = filter odd . map (^2)

main :: IO ()
main = do 
 print (squareEven [1,2,3,4,5,6,7,8,9,10]) 


Output:

[1,9,25,49,81]


Rewrite the following function using the $ operator:
result = sum (map (*2) (filter (>3) [1..10]))

result :: Int 
result = sum $ map (*2) $ filter (>3) [1..10]

main :: IO ()
main = do 
 putStrLn "The result is"
 print result 


--Output:

--The result is
--98
