import Data.List
import Data.Char
import qualified Data.Map as Map
import qualified Data.Set as Set

-- import Data.List

-- intersperse, intercalate, transpose, concat, concatMap, takeWhile
-- sort, group,span, partition,lines, elemIndex, unlines,words, unwords
-- nub, delete, union, groupBy, 




search :: (Eq a) => [a] -> [a] -> Bool
search needle haystack =
						let nlen = length needle 
						in foldl (\acc x -> if take nlen x == needle then True else acc) False ( tails haystack )

-- import Data.Char

encode :: Int -> String -> String

encode shift msg =
 		let		ords = map ord
				shifted = map (+ shift) . ords
		in 		map chr $ shifted msg

decode :: Int -> String -> String

decode shift msg = encode (negate shift) msg

--import Data.Map

findKey :: (Eq k) => k -> [(k,v)] -> v
findKey key xs = snd . head . filter (\(k,v) -> k == key)  $ xs
