-- main = putStrLn "hello,world!"

--main :: IO ()
--main = do
--		putStrLn "Hello, what's your name?"
--		name <- getLine
--		putStrLn ("Hey " ++ name ++ " ,you rock!")

main :: IO ()
main = do
		putStrLn "What's your first name?"
		firstName <- getLine
		putStrLn "What's your last name ?"
		lastName <- getLine
		let
			bigFirstName = map toUpper firstName
			bigLastName = map toUpper lastName
		putStrLn $ "Hey " ++ bigFirstName ++ " " ++ bigLastName ++ ", how are you?"

