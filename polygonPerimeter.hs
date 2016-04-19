import Control.Monad
import Data.List
import Control.Applicative ((<$>))

main = do
	n <- readLn
	xs <- replicateM n (parsePair <$> getLine)
	print xs
	print (head xs)
	print (sum (zipWith len xs (tail xs ++ [head xs])))


len :: (Int, Int) -> (Int, Int) -> Double
len (x,y) (x', y') = sqrt (( fromIntegral x - fromIntegral x')**2 + (fromIntegral y - fromIntegral y')**2) 

parsePair :: String -> (Int, Int)
parsePair xs = let [x1, x2] = words xs in (read x1, read x2)
