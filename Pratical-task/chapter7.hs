--HC7T1: Implement an Eq Instance for a Custom Data Type
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
