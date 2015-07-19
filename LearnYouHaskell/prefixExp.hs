import Data.Char


--main = getContents >>= putStrLn . map (f) . words

compress  :: String -> String ->(String, String, String)
compress [] [] = ([],[],[])
compress xs [] = ([].xs,[])
compress [] xs = ([], [], xs)
compress (x:xs) (y:ys) 
  | x==y = (([x] ++ ap), ax, ay)
  | otherwise = ([],x:xs,y:ys) 
   where (ap, ax, ay) = compress xs ys

writeString :: String -> IO()
writeString str = putStrLn (show (length str) ++" " ++ str)

main = do
  line1 <- getLine
  line2 <- getLine
  let (pref,len1,len2) = compress line1 line2
  writeString pref
  writeString line1
  writeString line2

