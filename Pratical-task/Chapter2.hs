--HC2T1 - Task 1: Checking Types in GHCi
--Open GHCi and check the types of the following expressions:
--42 , 3.14, "Haskell", 'Z', True && False
  --solution to all 

double :: Int -> Int
double x = x * 2 

main :: IO ()
main = do 
 print $ double 21 
  --Output = 42

addNumber :: Floating a => a -> a -> a
addNumber x y = x + y 

main :: IO ()
main = do 
 print $ addNumber 1.1 2.04
   Output = 3.14
             or 
addNumber :: Float -> Float -> Float
addNumber x y = x + y 

main :: IO ()
main = do 
 print $ addNumber 2.14 1.0
 --Output = 3.14

 
main :: IO ()
main = do 
 print $ "Haskell"
  --Output = "Haskell"

expression :: [Char] -> [Char]
expression z = "z"
 
main :: IO ()
main = do 
 print $ expression "z"
   --Outcome = "z"
          or 
expression :: String -> String 
expression z = "z"
 
main :: IO ()
main = do 
 print $ expression "z"
   --outcome = "z"
--I want assume that both [Chat] and String posses same function in writing a code but it's just that String is a short name to [Char].
--I stand to be corrected if this statement isn't right. 

main :: IO ()
main = do 
 print $ True&&True
 print $ False&&False
 print $ True&&False
 print $ False&&True
  --Output =
   --True
   --False
   --False
   --False
   
   --HC2T2 - Task 2: Function Type Signatures
--Write function signatures for the following functions:

A function add that takes two Int values and returns their sum.
