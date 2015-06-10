head1' :: [a] -> a
head1' xs = case xs of 
	[]    -> error "No head for empty lists!"
	(x:_) -> x
