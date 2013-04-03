triangles :: (Integral x) => x -> x 
triangles x = sum [1..x]

factors :: (Integral x) => x -> [x]
factors x = [i | i <- [1..x], mod x i == 0]

trilen  = length . factors . triangles
