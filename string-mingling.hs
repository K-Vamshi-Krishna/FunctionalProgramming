import Control.Monad

solve :: String -> String
solve (x:y:xs) = y : x : (solve xs)
solve [] =[]


main::IO()
main = do 
	t <- liftM read getLine
	replicateM_ t (do
		str <- getLine
		putStrLn $ solve str
		)
--main = do
--	t <- readLn :: IO Int
--	inputdata <- getContents
--	putStr $ unlines $ map solve $lines $inputdata

--main = fmap (tail . lines) getContents >>= mapM_ (putStrLn. solve)



-- t<- (readLn :: IO Int)
-- forM_ [1..t] $ \i -> do
--	s <- getLine
--	putStrLn . f $ s
