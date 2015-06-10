maxx :: (Ord a) => [a] -> a
maxx xs = case xs of [] -> error "Empty list"
					 [x] -> x
					 (x : xt) -> max x (maxx xt)

-- case of expression 

doubleMe :: (Num a, Ord a) => a -> a
doubleMe a = if a < 10 
				then a*a
			else if(a < 20)	
				then a * a * a
			else 
				a * a* a*a

-- flip using where
flip' :: (a -> b -> c) ->(b->a->c)
flip' f = g
	where g y x = f x y

-- without using where
flip'' :: (a-> b -> c)::(b->c->a)
flip'' f x y = f y x

map'' :: (a->b) -> [a] -> [b]
map'' f xs = foldr ( \x acc-> f(x):acc) [] xs

first :: (a,a,a) -> a
first (x,y,z) = x


zipWith' (a->b->c) -> [a]->[b]->[c]

