import Data.Char

main = do
  digits <- getLine
  let ds = map digitToInt digits
  putStrLn $ show $ sum $ zipWith (\a b -> if (a==b) then a else 0) ds ((drop (div (length ds) 2) ds) ++ ds)
  
