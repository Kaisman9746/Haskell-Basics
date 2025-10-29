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