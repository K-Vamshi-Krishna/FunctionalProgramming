import System.IO
--main = do 
--		handle <- openFile "friend.txt" ReadMode
--  	contents <= hGetContents handle
--		putStr contents
--		hClose handle

main = do
		contents <- readFile "friend.txt"
		putStrLn contents
