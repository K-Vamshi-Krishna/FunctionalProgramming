compress (x:xs)  
	| null xs = x 
	| otherwise = compress' (x:xs)

compress' (x:xs)
	| x == head xs = x: compress (tail xs)
	| x /= head xs = x: compress xs 

--f :: Eq a => [a] -> [a]
--f [] = []
--f (x:xs) = x : (show (1 + length (takeWhile (==x) xs))) : f (dropWhile (==x) xs)

