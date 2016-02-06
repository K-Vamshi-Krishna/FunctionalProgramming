import Data.Char
import Text.Printf  --printf "%0.6f" (1.)

main :: IO()
main = getContents >>= putStrLn . solve. lines

solve [a, b] =
	unlines [ show (length p) ++ " " ++ p
		, show (length x) ++ " " ++ x
		, show (length y) ++ " " ++ y
	]
	where
	  (p, x, y) = compress a b
	  aLen = length a
	  bLen = length b

compress :: String -> String -> (String, String, String)
compress [] [] = ([], [], [])
compress xs [] = ([], xs, [])
compress [] xs = ([]. [], xs)
compress (x:xs) (y:ys)
	| x /=y = ([], x:xs, y:ys)
	| otherwise =
		let (p,a,b) = compress xs ys
		in (x:p, a, b)

