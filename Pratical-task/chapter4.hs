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