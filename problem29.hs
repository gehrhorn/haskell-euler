import Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

results = [a^b | a <- [2..100], b <- [2..100]]
