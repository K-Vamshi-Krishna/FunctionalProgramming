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




parse s rg yb =
	rg == 0 && yb == 0
parse (x:xs) rg yb
	| abs rg > 1 = False
	| abs yb > 1 = False
	| x == 'R' = parse xs (rg+1) yb
	| x == 'G' = parse xs (rg-1) yb
	| x == 'Y' = parse xs rg (yb+1)
	| x == 'B' = parse xs rg (yb-1)


-- getContents >>= mapM_ (print. (\x -> parse x 0 0)). tail. lines
