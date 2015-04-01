doubleUs x y = doubleMe x + doubleMe y
doubleMe x = x+x

doubleSmallNumber x = if x> 100 then x else x*2

lucky :: (Integral a) => a -> String
lucky 7 ="Lucky number seven!"
lucky x = "Sorry, you're out of luck,pal!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe x = "Else!!!"


factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial(n-1)



charName :: Char -> [Char]
charName 'a' = "Albert"
charName 'b' = "Broseph"


addVectors :: (Num a) => (a,a) ->(a,a) ->(a,a)
addVectors (x1,y1) (x2,y2) = (x1 + x2, y1 + y2)

first :: (Num a) => (a,a,a) -> a
first(a,_,_) =a

secound ::(a,b,c) ->b
second(_,b,_)=b



head' :: [d] -> d
head' [] = error "Error!!! Already an empty list"
head' (x : _) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty !!!"
tell (x:[]) = "The list has one element" ++ show x
tell (x:y:[]) = "The list has two elements" ++ show x ++ " and" ++ show y
tell (x: y :_) = "The list has more than two elements,"

length':: [a] -> Int
length' [] = 0
length'(_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum'[] =0
sum'(x:xs) = x + sum' xs


capital :: String -> String
capital [] = "Empty String"
capital xs@(x:_) = "The first letter of" ++ xs ++ " is " ++ [x]

max' :: (Ord a) => a -> a ->a
max ' a b
		| a > b = a
		| otherwise = b

min' :: (Ord a) => a -> a -> a
min' a b | a < b = a | otherwise = b
