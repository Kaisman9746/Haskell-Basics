it--HC7T1: Implement an Eq Instance for a Custom Data Type
--Define a data type Color representing Red, Green, and Blue.
--Implement the Eq type class for it so that colors of the same type are considered equal.


data Color = Red | Green | Blue

instance Eq Color where
    Red   == Red   = True
    Green == Green = True
    Blue  == Blue  = True
    _     == _     = False

main :: IO ()
main = do
    print (Red == Red)    
    print (Red == Blue)    
    print (Green == Green) 

   --Output:True False True

--HC7T2: Implement an Ord Instance for a Custom Data Type
--Using the Color type from HC7T1, implement the Ord type class so that Red < Green < Blue.

data Color = Red | Green | Blue

instance Eq Color where
    Red   == Red   = True
    Green == Green = True
    Blue  == Blue  = True
    _     == _     = False

instance Ord Color where
    compare Red   Green = LT
    compare Red   Blue  = LT
    compare Green Blue  = LT

    compare Green Red   = GT
    compare Blue  Red   = GT
    compare Blue  Green = GT

    compare _ _ = EQ

main :: IO ()
main = do
    print (Red < Green)   
    print (Green < Blue)  
    print (Blue > Red) 
    --Output = True True True 

   --HC7T3: Function Using Multiple Constraints
--Write a function compareValues that takes two arguments of type a and returns the larger one.
--Ensure that a is both an instance of Eq and Ord 

compareValues :: (Eq a, Ord a) => a -> a -> a
compareValues x y =
    if x > y
       then x
       else y

main :: IO ()
main = do
    print (compareValues 5 3)        
    print (compareValues 2 10)      
    print (compareValues 'b' 'a')   
    --Output: 5 10 'b'

--HC7T4: Custom Type with Show and Read
--Define a data type Shape with constructors Circle Double and Rectangle Double Double.
--Implement Show and Read instances for it.

data Shape = Circle Double
           | Rectangle Double Double
           deriving (Show, Read)

main :: IO ()
main = do
    print (Circle 5)
    print (Rectangle 3 4)

    print (read "Circle 7" :: Shape)
    print (read "Rectangle 2 8" :: Shape)
     --Output:
     --Circle 5.0
     --Rectangle 3.0 4.0
     --Circle 7.0
     --Rectangle 2.0 8.0
  
  --HC7T5: Function with Num Constraint
--Write a function squareArea that calculates the area of a square given its side length.
--Ensure that the function works with any numeric type.

-- Function to calculate square area
squareArea :: Num a => a -> a
squareArea side = side * side

main :: IO ()
main = do
    print (squareArea 5)     -- 25
    print (squareArea 3.5)   -- 12.25
