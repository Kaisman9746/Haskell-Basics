--HC6T1: Factorial (Recursive)
--Implement a recursive function to compute the factorial of a numberer.

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
    print (factorial 5)
    --output = 120
    
--HC6T2: Fibonacci (Recursive)
--Implement a recursive function to compute the nth Fibonacci number.

 Recursive function to compute the nth Fibonacci number
fib :: Int -> Int
fib 0 = 0          -- Base case 1
fib 1 = 1          -- Base case 2
fib n = fib (n-1) + fib (n-2)   -- Recursive case

main :: IO ()
main = do
    print (fib 10)   -- Example: find the 10th Fibonacci number
     --Output = 55

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

main :: IO ()
main = do
    print (fib 7)
    -output = 13
    
--HC6T3: Sum of Elements Using foldr
--Implement a function to compute the sum of elements in a list using foldr.

sumList :: [Int] -> Int
sumList xs = foldr (+) 0 xs

main :: IO ()
main = do
    print (sumList [1,2,3,4,5])
     --output = 15
--HC6T4: Product of Elements Using foldl
--Implement a function to compute the product of elements in a list using foldl.

productList :: [Int] -> Int
productList xs = foldl (*) 1 xs

main :: IO ()
main = do
    print (productList [1,2,3,4,5])
     --output = 120

--HC6T5: Reverse a List (Recursive)
--Implement a function that reverses a list using recursion.

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

main :: IO ()
main = do
    print (myReverse [1,2,3,4,5]
     -- Output = [5,4,3,2,1]

 --HC6T6: Element Exists in List
--Implement a function that determines whether a given element exists in a list.


elementExists :: Eq a => a -> [a] -> Bool
elementExists _ [] = False
elementExists y (x:xs)
    | y == x    = True
    | otherwise = elementExists y xs

main :: IO ()
main = do
    print (elementExists 3 [1,2,3,4,5])  -- True
    print (elementExists 6 [1,2,3,4,5])  -- False
     --Output True False
     
--HC6T7: List Length
--Implement a function that takes a list and returns the length of the list.

myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

main :: IO ()
main = do
    print (myLength [10,20,30,40])  
     --Output = 4
