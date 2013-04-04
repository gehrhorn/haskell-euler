factors :: (Integral x) => x -> [x]
factors x = [i | i <- [1..x], mod x i == 0]

d = sum . init . factors

listAmicables :: Int -> [Int]
listAmicables x = [a | a <- [2..x], a == (d $ d a), a /= d a]
  
