maximum' :: (Ord a) => [a] -> a 
maximum' [] = error "empty list"
maximum' [x] = x
maximum' (x:xs) = max x ( maximum' xs)



replicate' :: (Num i,Ord i) => i ->a->[a]
replicate' 0 x = []
replicate' n x = x : replicate' (n-1) x

--maximum1` :: (Ord a) => [a] -> a
--maximum1` [] = error "empty List"
--maximum1` [x] = x
--maximum1` (x:xs)
--	| x > maxTail = x
--	| otherwise = maxTail
--	where maxTail = maximum1` xs

--take':: (Num i) => i-> a -> [a]
--take' n - = 
--		| n <= 0 = []
--take' _ [] =[]  --base class
--take' n (x:xs) = x: take' (n-1) xs


length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

max' :: (Ord a) => a -> a -> a
max' a b
	| a > b  = a
	| otherwise = b


myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
	| a > b = GT
	| a == b = EQ
	| otherwise = LT


calcBmis :: (RealFloat a) => [(a,a)] -> [a]
calcBmis xs = [bmi | (w,h) <- xs, let bmi = w/h ^2]

calcBmis' :: (RealFloat a) => [(a,a)] -> [a]
calcBmis' xs = [bmi w h | (w,h) <- xs]
	where bmi weight height = weight / height ^2



head1'' :: [a] -> a
head1'' [] = error "No head for empty lists!"
head1'' (x:_) = x

describeList :: [a] -> String
describeList xs = "The list is" ++ what xs
	where 
		what [] = "empty"
		what [x] = "a singleton list."
		what xs  = "a longer list."


take1' ::(Num i, Ord i) => i -> [a] ->[a]
take1' n _
	| n <= 0 = [] 
take1' _ [] = []
take1' n (x:xs) = x : take1' (n-1)xs


zip' :: [a]->[b]->[(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys

elem' :: (Eq a) => a -> a ->Bool
elem' a [] = False
elem' a (x:xs)
	| a == x = True
	| otherwise = a `elem'` xs

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
	let smallerSorted = quicksort [a | a <- xs, a <= x]
	    biggerSorted = quicksort [a | a <- xs, a > x]
	in smallerSorted ++ [x] ++ bigggerSorted
