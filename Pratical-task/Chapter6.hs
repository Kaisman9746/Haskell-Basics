--HC6T1: Factorial (Recursive)
--Implement a recursive function to compute the factorial of a numberer.

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
    print (factorial 5)
    --output = 120
