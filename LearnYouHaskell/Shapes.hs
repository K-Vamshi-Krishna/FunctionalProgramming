lucky :: (Integral a) => a -> String
lucky 0 = "Not enough Lucky."
lucky x =
		if x `mod` 10 == 7 then 
			"Lucky"
		else
			lucky ( x `div` 10)




summation :: (Num a) => [a] -> a
summation xs = case xs of [] -> 0
						(x: xxs) -> x + (summation xxs)




