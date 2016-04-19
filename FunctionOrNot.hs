import Control.Monad
import Control.Applicative ((<$>))
import Data.List

main = do
  numCases <- readLn
  replicateM_ numCases $ do
    numPairs <- readLn
    pairs <- replicateM numPairs (parsePair <$> getLine)
    putStrLn (if length (nub (map fst pairs)) == numPairs then "YES" else "NO")
    
parsePair :: String -> (Int, Int)
parsePair xs = let [w1, w2] = words xs in (read w1, read w2)
