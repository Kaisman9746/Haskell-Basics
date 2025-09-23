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
   --Output = "z"
          or 
expression :: String -> String 
expression z = "z"
 
main :: IO ()
main = do 
 print $ expression "z"
   --output = "z"
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

add :: Int -> Int -> Int 
add x y = x + y 

main :: IO ()
main = do 
 print $ add 500 1700 
  --Output = 2200
 A function isEven that takes an Int and returns a Bool indicating if it's even.

isEven :: Int -> Bool
isEven x = mod x 2 == 0

main :: IO ()
main = do 
 print $ isEven 30
  --Output = True 
  
A function concatStrings that takes two String values and returns their concatenation
 
concatStrings :: String -> String -> String 
concatStrings x y = x ++ y

main :: IO ()
main = do 
 putStrLn (concatStrings "I am kaisman by name, and" " I am from the Univers." ) 
 Output = I am kaisman by name, and I am from the Univers.

 HC2T3 - Task 3: Immutable Variables
Define the following immutable variables in Haskell:

--myAge as an Int

myAge :: Int
myAge = 20

main :: IO ()
main = do 
 print $ myAge
  --Output = 20
  
--piValue as a Double
piValue :: Double 
piValue = pi 

main :: IO ()
main = do 
 print $ piValue
  --output = 3.141592653589793
  
--greeting as a String

greeting :: String
greeting = "Happy new month"

main :: IO ()
main = do 
 putStrLn greeting 
  --Output = Happy new month 

isHaskellFun as a Bool

isHaskellFun :: Bool
isHaskellFun = True

main :: IO ()
main = do 
 print $ isHaskellFun
  --Outcome = True 

  
HC2T4 - Task 4: Converting Between Infix and Prefix Notations

  Use prefix notation for the following infix expressions:
5 + 3, 10 * 4, True && False. 


prefix :: Int -> Int 
prefix x = x

main :: IO ()
main = do 
 print $ (+) 5 3
  --output = 8


prefix :: Int -> Int 
prefix x = x 

main :: IO ()
main = do 
 print $ (*) 10  4
  --output = 40
 

main :: IO ()
main = do 
print $ (True && False)
  --output = False

  Use infix notation for the following prefix functions:
(+) 7 2 , (*) 6 5 , (&&) True False


infixExpression :: Int -> Int 
infixExpression x = x 

main :: IO ()
main = do 
 print $ (7 + 2)
    --output = 9

infixExpression :: Int -> Int
infixExpression x = x 

main :: IO ()
main = do 
 print $ (6 * 5)
    --output = 30
 
 
 main :: IO ()
 main = do 
  print ((&&) True False) 
   --output = False 
   
HC2T5 - Task 5: Defining and Using Functions
Write a function circleArea that takes a Float radius and returns the area of the circle

ircleArea :: Float -> Float 
circleArea r = pi * r ^ 2

main :: IO ()
main = do 
 print $ circleArea 10.5
   --output =346.3606
 
circleArea :: Floating a => a -> a
circleArea r = pi * r ^ 2

main :: IO ()
main = do 
 print $ circleArea 25.5
  --output =2042.820622996763
  
circleArea :: Int -> Float 
circleArea r = pi * fromIntegral (r ^ 2) 

main :: IO ()
main = do 
 print $ circleArea 20
  --output =1256.6371

Write a function maxOfThree that takes three Int values and returns the maximum.
Test your functions with different inputs.

maxOfThree :: Int -> Int -> Int -> Int
maxOfThree x y z = max x (max y z)

main :: IO ()
main = do 
 print $ (maxOfThree 5 3 10 ) 
      --output = 10
   
  
maxOfThree :: Int -> Int -> Int -> Int
maxOfThree x y z = max x (max y x)

main :: IO ()
main = do 
 print $ (maxOfThree 10 25 20) 
       --output = 25

       
HC2T6 - Task 6: Understanding Int vs Integer

smallNumber :: Int
smallNumber = 2 ^ 62

main :: IO ()
main = do 
 print $ smallNumber 
  --output = 4611686018427387904
  
bigNumber :: Integer 
bigNumber  = 2 ^ 127
 
main :: IO ()
main = do 
 print $ bigNumber 
  --output = 170141183460469231731687303715884105728
  

evaluate :: Int
evaluate = 2 ^ 64

main :: IO ()
main = do 
 print $ evaluate 
  --output = 0

  HC2T7 - Task 7: Boolean Expressions
Write Boolean expressions that evaluate to:

--true using && 
main :: IO ()
main = do 
 let expression = (6 > 4) && (5 == 5) 
 print  expression 
  --output = true 
  
main :: IO ()
main = do 
let expression = (4 < 8) && (10 > 6)
 print expression 
   --output = true 
   
  --Falso using || 
main :: IO ()
main = do 
 let expression = (10 <= 7) || (5 == 10)
 print expression
  --output = false 
  
main :: IO ()
main = do 
 let expression = (1 == 2) || (5 < 1)
 print expression
   --output = false 
   
  --True using not

main :: IO ()
main = do
    let expression = not (8 < 3)
    print expression
      --output = true 
main :: IO ()
main = do
 let expression = not (29 == 31)
 print expression
   --output = true 
