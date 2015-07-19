{- let go !r !g !y ss
	| null ss = r == g && y == b
	| abs (r-g) > 1 = False
	| abs (b-y) > 1 = False
	| otherwise =
		go (if head ss == 'R' then r+1 else r)
		   (if head ss == 'G' then g+1 else g)
		   (if head ss == 'B' then b+1 else b)
		   (if head ss == 'Y' then y+1 else y)
		   (tail ss)
-}




import Control.Monad



full s r g y b
	= if abs (r - g) >1 || abs (y - b) > 1 then False
		else case s of
		 	[] -> r == g && y == b
			'R':ss -> full ss (r+1) g y b
			'G':ss -> full ss r (g+1) y b
			'Y':ss -> full ss r g (y+1) b
			'B':ss -> full ss r g y (b+1)



main = do
  t <- readLn
  replicateM_ t $ do
  	s <- getLine
	print $ full s 0 0 0 0
