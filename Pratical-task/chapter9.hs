Create a parametric type synonym called Entity a to represent various types of entities with addresses.

module Main where
typetype Addr= String

type Entity a = (a, Address)

person :: Entity String
person = ("John Doe", "Ibadan, Oyo State")

building :: Entity Int
building = (101, "Lagos, Nigeria")

company :: Entity (String, Int)
company = (("Tech Ltd", 2015), "Abuja, Nigeria")

main :: IO ()
main = do
    print person
    print building
    print company
Output:
("John Doe","Ibadan, Oyo State""
(101,"Lagos, Nigeria")
(("Tech Ltd",2015),"Abuja, Nigeria")

    
