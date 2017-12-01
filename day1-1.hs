import Data.Char

main = do
  digits <- getLine
  let ds = map digitToInt digits
  putStrLn $ show $ sum $ zipWith (\ a b -> if (a==b) then a else 0) ds ((tail ds) ++ ds)

