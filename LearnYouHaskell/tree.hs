import qualified Data.Map as Map

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq, Ord)

singleton :: a -> Tree a
singleton a = Node a (EmptyTree) (EmptyTree)

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert a EmptyTree = singleton a
--treeInsert a ( Node x left right) =if a<=x then
--											Nodex x (treeInsert a left) right
--                                    else
--                                      Node x left ( treeInsert a right)

treeInsert a ( Node x left right)
	| a == x = Node x left right
	| a  < x = Node x ( treeInsert a left) right
	| a  > x = Node x left ( treeInsert a right)

treeElem :: (Ord a, Eq a) 
