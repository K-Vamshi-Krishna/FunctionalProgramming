add :: Integer -> Integer -> Integer
add x y = x + y


inc = add 1

map :: (a->b) ->[a] -> [b]
map f []     = []
map f (x:xs) = f x : map  f xs



inc x = x+ 1
inc = \x -> x +1
add = \x y -> x + y

(++) :: [a] -> [a] ->[a]
[] ++ ys = ys
(x:xs) ++ys = x :(xs ++ ys)

(.) :: (b->c) -> (a->b) -> (a->c)
f . g  =c -> f (g x)

(x+) = \y -> x +y
(+y) = \x -> x+y
(+)= \x y -> x +y

inc = (+1)
add =(=)


-- infinte data structures

ones = 1 : ones

numsFrom n = n: numsFrom (n+1)

squares  = map (^2) (numsfrom 0)

--take 5 squares


fib = 1 : 1 : [a+b | (a,b) <- zip fib (tail fib)]

zip (x:xs) (y:ys) = (x,y) : zip xs ys
zip xs ys = []

instance Functor Maybe where
	fmap func (Just val) = Just (func val)
	fmap func Nothing = Nothing

-- getPostTitle <$> (findPost 1)


instance Functor [] where
	fmap = map

instance Functor ((->) r) where
	fmap f g = f . g
	
