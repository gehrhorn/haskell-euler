triangles :: (Integral x) => x -> x 
triangles x = (x^2 + x) `div` 2

factors :: (Integral x) => x -> [x]
factors x = [i | i <- [1..x], mod x i == 0]

trilen  = length . factors . triangles
