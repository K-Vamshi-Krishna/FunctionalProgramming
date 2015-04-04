import Data.Char
import Control.Monad
-- main = putStrLn "hello,world!"

--main :: IO ()
--main = do
--		putStrLn "Hello, what's your name?"
--		name <- getLine
--		putStrLn ("Hey " ++ name ++ " ,you rock!")

--main :: IO ()
--main = do
--		putStrLn "What's your first name?"
--		firstName <- getLine
--		putStrLn "What's your last name ?"
--		lastName <- getLine
--		let
--			bigFirstName = map toUpper firstName
--			bigLastName = map toUpper lastName
--		putStrLn $ "Hey " ++ bigFirstName ++ " " ++ bigLastName ++ ", how are you?"


--main :: IO ()
--main = do 
--	line <- getLine
--	if null line
--		then return ()
--	else do
--		putStrLn $ reverseWords line
--		main

reverseWords :: String -> String
reverseWords = unwords . map reverse . words


-- take 3 intputs
--main = do 
--	rs <- sequence [getLine,getLine,getLine]
--	print rs


main = forever $ do 
	putStr' "Give me some input\n"
	l <- getLine
	putStrLn $ map toUpper l

putStr' :: String -> IO()
putStr'[] = return ()
putStr' (x:xs) = do
			putChar x
			putStr' xs
