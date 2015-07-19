import Data.List


printArray::[Int] -> String
printArray [x] = show x
printArray (x:xs) = show x ++ " "++ printArray xs

reduce :: [Int]-> [Int]
reduce (x:rest@(y:z)) = (x+y) : (reduce rest)
reduce _ =[]

pascal 1 = [1]
pascal 2 = [1,1]
pascal x = [1] ++ reduce (pascal (x-1)) ++ [1]

pascalone :: [[Int]]
pascalone =  pascalHelper 1
	where pascalHelper  xs = pascal xs : pascalHelper (xs+1) 

showRows pt = do
	let row = head pt
	let rowStr = printArray row
	putStrLn rowStr
	showRows (tail pt)

main = do
	k <- getLine
	mapM_ putStrLn $ map (unwords . map show) $ take (read k::Int) pascalone



--main :: IO()
--main = getLine >>= putStrLn.intercalate "\n".  map (\x -> intercalate " ". map show $ x ) .(\n -> take n arr). read

--arr :: [[Int]]
--arr = [ [ solve r c| c <- [0..r]] | r <- [0..]]
--  where
--    solve r c 
--      | c == 0 || c == r = 1
--     | otherwise = solve (r-1) (c-1) + solve (r-1) c
--main = do
--   inputdata <- getContents
--   mapM_ putStrLn $ map show $ f $ map (read :: String -> Int) $ lines inputdata
