double :: Int -> Int 
double x = x * 2

main :: IO () 
main = do 
 print $ double 10 
 --answer = 20

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

 
