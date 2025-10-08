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