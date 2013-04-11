import Data.Char
import Data.List
triangles :: (Integral x) => Int  -> [x]
triangles x = take x [ div (a^2 + a) 2   | a <- [1..]]

score :: String -> Int
score str = sum $ map (\a -> ord a - 64) str 

triword :: String -> Bool


main = do
  input <- readFile "problem42/words.txt"
  let wordlist = lines input
  print wordlist
  return ()
