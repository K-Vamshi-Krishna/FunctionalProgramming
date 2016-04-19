import Data.Char
main :: IO()
main = do
	putStrLn "sairam"
	name <- getLine
	putStrLn $ solve name

solve :: String-> String
solve x =  (map check $ words x )

getCharAt :: String -> Int -> Char
getCharAt x n = if n <= ((length x) - 1) 
				then x !!n
				else ' '

getInteger :: String -> Int -> Int
getInteger [] 0 = 0
getInteger [] m = m
getInteger (x:xs) m = getInteger xs ((m * 10) + (digitToInt x))

splitString :: String -> String
splitString [] = []
splitString (x:xs) = if isDigit x
					 then splitString xs
					 else x:xs

getInt :: String -> String 
getInt [] = []
getInt (x:xs) = if isDigit x  
				then x : getInt xs
			    else
				[]

check :: String->Char
check x = getCharAt  (splitString x) (getInteger (getInt x ) 0)
