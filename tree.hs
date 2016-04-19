data(Ord a , Eq a)=> Tree a = Empty | Node a (Tree a) (Tree a ) deriving (Show)

empty:: (Ord a) => Tree a -> Bool 
empty Nil = True
empty _  = False


insert ::Tree a -> a -> Tree a
insert Nil x = Node Nil x Nil
insert (Node t1 v t2) x
	|v


inOrderTraversal :: Tree a -> show a -> Tree a -> Tree a

