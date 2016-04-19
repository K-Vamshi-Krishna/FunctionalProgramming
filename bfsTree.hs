module Main where

data Tree a = Leaf a | Branch a (Tree a) (Tree a)

-- Depth firtst tree traversal

depthFirst :: Tree a -> [a]
depthFirst (Leaf x) = [x]
depthFirst (Branch x left right) = depthFirst left ++ [x] ++
                                                                   depthFirst right


-- Breadth first tree traversal
breadthFirst :: Tree a -> [a]
breadthFirst x = _breadthFirst [x]

_breadthFirst :: [Tree a] -> [a]
_breadthFirst [] = []
_breadthFirst xs = map treeValue xs ++ _breadthFirst(xs >>= immediateChildren)

--concat map is ame as bind, List monad is return \x->[x] and bind is exactly concatMap ( >>=) = concat Map
--
treeValue :: Tree a -> a
treeValue (Leaf x) = x
treeValue (Branch x _ _) = x

immediateChildren :: Tree a -> [Tree a]
immediateChildren (Leaf _) = []
immediateChildren (Branch _ l r) =[l,r]

mytree = Branch "1"
        (Branch "2"
                 (Leaf "4")
                 (Leaf "5"))
        (Branch "3"
                 (Leaf "6")
                 (Leaf "7"))

doList :: [IO()]-> IO()
doList = foldr(>>) (return ())

main:: IO()
main = do doList (map putStrLn (breadthFirst mytree))
