import Data.List

allPossibleSum = filter ((==) 123 . sum) $ subsequences [1,5,22,15,0]

fList :: [Integer] -> Int -> Integer -> [[Integer]]
fList _ 0 0 = [[]]
fList _ 0 _ = []
fList [] _ _ = []
fList (x:xs) n toSum = 
		concat [ map (( take z $ repeat x)++)
				(fList xs (n - z) (toSum - fromIntegral z * x))
				| z <- reverse [0..min n (fromInteger (toSum `div` x))]]
