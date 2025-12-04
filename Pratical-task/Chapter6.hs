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
