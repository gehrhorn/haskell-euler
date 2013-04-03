factors :: (Integral x) => x -> [x]
factors x = [i | i <- [1..x], mod x i == 0]

d = sum . init . factors
