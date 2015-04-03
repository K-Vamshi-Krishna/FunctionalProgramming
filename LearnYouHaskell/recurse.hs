maximum' :: (Ord a) => [a] -> a 
maximum' [] = error "empty list"
maximum' [x] = x
maximum' (x:xs) = max x ( maximum' xs)



replicate' :: (Num i,Ord i) => i ->a->[a]
replicate' 0 x = []
replicate' n x = x : replicate' (n-1) x

maximum1` :: (Ord a) => [a] -> a
maximum1` [] = error "empty List"
maximum1` [x] = x
maximum1` (x:xs)
	| x > maxTail = x
	| otherwise = maxTail
	where maxTail = maximum1` xs

take':: (Num i) => i-> a -> [a]
take' n - = 
		| n <= 0 = []
take' _ [] =[]  --base class
take' n (x:xs) = x: take' (n-1) xs
