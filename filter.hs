f :: Int -> [Int] -> [Int]
f n arr = concat $ map (replicate n) arr -- Complete this function

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words

