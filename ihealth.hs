import Data.List

beginEndSum :: [Int] ->[Int]
beginEndSum l =[n| n <- [0.. length l-1],sum (take n l) ==sum(drop(n+1) l)]

beginCheck::(Num a,Eq a)=>[Int]->Int->[Int]
beginCheck x n 
	| n == 0  && (sum $ take n x) == (sum $  drop (n+1) x) = [n]
	| n /= length x-1 && (sum $ take n x) == (sum $  drop (n+1) x) = n:beginCheck  x (n+1)
	| otherwise = beginCheck x (n+1)

beginCheckMain x = beginCheck x length (x-1) 

isEqual :: (Num a,Eq a) =>[a]->[a]->Bool
isEqual x y = (sum x) == (sum  y)


