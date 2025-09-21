double :: Int -> Int 
double x = x * 2

main :: IO () 
main = do 
 print $ double 10 
 --answer = 20

double :: Float-> Float
double x = x * 2

main :: IO () 
main = do 
 print $ double 5.5
  --output 11.0

increment :: Int -> Int 
increment x = x + 1

main :: IO ()
main = do 
 print $ increment 15
  --answer = 16

doublethenincrement :: Int -> Int 
doublethenincrement x =
  --let double = x * 2 
      --increment = doubled + 1 
   --in result 

main :: IO ()
main = do 
 print $ doublethenincrement 20
 -- answer = 41

 
      --Chapter1 task2
      
circleArea :: Float -> Float 
circleArea r = pi * r

main :: IO ()
main = do 
 print $ circleArea 27.5
   --Output using Float as an input = 86.3938
 
      --chapter1 task 3

greaterthan18 :: Int -> Int -> Bool 
greaterthan18 x y = x + y > 18 
   
main  :: IO ()
main = do 
 print $ greaterthan18 8 10 
  -- output using Int = False 
         or 
greaterthan18 :: Int -> Bool 
greaterthan18 x = x >= 18

main :: IO ()
main = do 
 print $ greaterthan18 17
 print $ greaterthan18 22
   --Output =
 --False
 --True
