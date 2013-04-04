import Data.List
import Data.Char

main = do 
  fileContents <- readFile "problem22/names.txt"
  let names = sort $ lines fileContents
  let zippedNames = zip names [1..]
  let finalScore = map calcNameScore zippedNames
  print (sum finalScore)
  return ()

-- ord x - 64 turns 'A' -> 1, 'B' -> 2, ...
calcNameScore :: (String, Int) -> Int
calcNameScore (n, pos) = ( sum $ map (\x -> ord x - 64) n ) * pos
