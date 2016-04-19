import Control.Monad
testCase :: [String] -> [[Int]]
testCase [] = []
testCase (l1:ls) = xs:(testCase other)
	where
		n = read l1
		(xss,other) = splitAt n ls
		xs = map head $ map (liftM read) $ map words xss::[Int]


main = do
	d <- getContents
	let (n:ls) = lines d
	putStrLn $ unlines ls

