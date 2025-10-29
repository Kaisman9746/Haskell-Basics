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

