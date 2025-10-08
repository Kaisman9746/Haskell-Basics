Create a function weatherReport :: String -> String that takes a weather condition as a string (e.g., "sunny", "rainy", "cloudy") and returns a message describing the weather.
Use pattern matching to handle the following cases:
"sunny" → "It's a bright and beautiful day!"
"rainy" → "Don't forget your umbrella!"
"cloudy" → "A bit gloomy, but no rain yet!"
Any other input should return "Weather unknown".. 

--using pattern matching.... 

weatherReport :: String -> String 
weatherReport "sunny" = "It's a bright and beautiful day!"
weatherReport "rainy" = "Don't forget your umbrella!"
weatherReport "cloudy" = "A bit gloomy, but no rain yet!"
weatherReport_         = "Weather unknown"

main :: IO ()
main = do 
 putStrLn (weatherReport "sunny") 
 putStrLn (weatherReport "rainy") 
 putStrLn (weatherReport "cloudy")

 --output
--It's a bright and beautiful day!
--Don't forget your umbrella!
--A bit gloomy, but no rain yet!


--using if then else

weatherReport :: String -> String 
weatherReport w = 
 if w == "sunny"
  then "It's a bright and beautiful day!"
     else if w == "rainy"
           then "Don't forget your umbrella!"
              else if w == "cloudy" 
                    then "A bit gloomy, but no rain yet!"
                       else "Weather unknown"
                       
main :: IO ()
main = do 
 putStrLn (weatherReport "rainy") 
 putStrLn (weatherReport "sunny")
 putStrLn (weatherReport "cloudy")

--Output
Don't forget your umbrella!
It's a bright and beautiful day!
A bit gloomy, but no rain yet!

    --using guard format

weatherReport :: String -> String 
weatherReport w
 | w == "sunny"   = "It's a bright and beautiful day!"
 | w == "rainy"   =  "Don't forget your umbrella!"
 | w == "cloudy"  = "A bit gloomy, but no rain yet!"
 | otherwise    =   "Weather unknown"
 
main :: IO ()
main = do 
 putStrLn (weatherReport "sunny") 
 putStrLn (weatherReport "cloudy") 
 putStrLn (weatherReport "rainy") 
 putStrLn (weatherReport "cold") 


--Output:

--It's a bright and beautiful day!
--A bit gloomy, but no rain yet!
--Don't forget your umbrella!
--Weather unknown 

HC4T2 - Task 2: Define a dayType Function
Create a function dayType :: String -> String that determines if a given day of the week is a weekday or weekend.
"Saturday" and "Sunday" → "It's a weekend!"
Any other day of the week → "It's a weekday."
If an invalid day is provided, return "Invalid day".

--solution using pattern matching 

dayType :: String -> String 
dayType "Saturday" = "It's a weekend!"
dayType "Sunday"   = "It's a weekend!"
dayType "Monday"   = "It's a weekday."
dayType "Tuesday"  = "It's a weekday."
dayType "Wednesday" = "It's a weekday."
dayType "Thurday"  = "It's a weekday."
dayType "Friday"   = "It's a weekday."
dayType _           =  "Invalid day"

main :: IO ()
main = do 
 putStrLn (dayType "Saturday") 
 putStrLn (dayType "Sunday")
 putStrLn (dayType "Monday")
 putStrLn (dayType "Tuesday")
 putStrLn (dayType "Wednesday")
 putStrLn (dayType "Thursday")
 putStrLn (dayType "Friday")

--Output
It's a weekend!
It's a weekend!
It's a weekday.
It's a weekday.
It's a weekday.
Invalid day
It's a weekday.

 --same code using guards

dayType :: String -> String 
dayType d =
 | d == "Saturday"  = "It's a weekend!"
 | d == "Sunday"    = "It's a weekend!"
 | d == "Monday"    = "It's a weekday."
 | d == "Tuesday"   = "It's a weekday."
 | d == "Wednesday" = "It's a weekday."
 | d == "Thursday"  = "It's a weekday."
 | d == "Friday"    = "It's a weekday."
 | otherwise  =  "Invalid day"

main :: IO ()
main = do 
 putStrLn (dayType "Saturday") 
 putStrLn (dayType "Sunday")
 putStrLn (dayType "Monday")
 putStrLn (dayType "Tuesday")
 putStrLn (dayType "Wednesday")
 putStrLn (dayType "Thursday")
 putStrLn (dayType "Friday")

--Output
--It's a weekend!
--It's a weekend!
--It's a weekday.
--It's a weekday.
--It's a weekday.
--Invalid day
--It's a weekday.

--using if then else 

dayType :: String -> String 
dayType d = 
 if d == "Saturday" 
  then  "It's a weekend!"
     else if d == "Sunday"   
        then "It's a weekend!"
            else if d == "Monday"   
                  then  "It's a weekday."
                     else if d == "Tuesday"  
                           then  "It's a weekday." 
                              else if d == "Wednesday" 
                                    then "It's a weekday."
                                       else if d == "Thursday"
                                             then "It's a weekday."
                                                else if d == "Friday"   
                                                      then "It's a weekday."
                                                         else "Invalid day"

main :: IO ()
main = do 
 putStrLn (dayType "Saturday") 
 putStrLn (dayType "Sunday")
 putStrLn (dayType "Monday")
 putStrLn (dayType "Tuesday")
 putStrLn (dayType "Wednesday")
 putStrLn (dayType "Thursday")
 putStrLn (dayType "Friday")

     --Output:

--It's a weekend!
--It's a weekend!
--It's a weekday.
--It's a weekday.
--It's a weekday.
--It's a weekday.
--It's a weekday. 


dayType :: String -> String 
dayType d = 
 if d == "Saturday" then "It's a weekend!"
  else if d == "Sunday" then "It's a weekend!"
        else if d == "Monday" then "It's a weekday."
              else if d == "Tuesday" then "It's a weekday."
                    else if d == "Wednesday" then "It's a weekday."
                          else if d == "Thursday" then "It's a weekday."
                                else if d == "Friday" then "It's a weekday."
                                      else "Invalid day"
                                      
main :: IO () 
main = do 
 putStrLn (dayType "Saturday") 
 putStrLn (dayType "Sunday")
 putStrLn (dayType "Monday")
 putStrLn (dayType "Tuesday")
 putStrLn (dayType "Wednesday")
 putStrLn (dayType "Thursday")
 putStrLn (dayType "Friday")
 putStrLn (dayType "Christmas") 

  
--It's a weekend!
--It's a weekend!
--It's a weekday.
--It's a weekday.
--It's a weekday.
--It's a weekday.
--It's a weekday.
--Invalid day