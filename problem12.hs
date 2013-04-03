triangles :: Int -> Int
triangles x = (x^2 + x) `div` 2

numFactors :: (Integral a) => a -> Int
numFactors x = 2 * length [i | i <- [1..flrSqrt x], mod x i == 0]



flrSqrt x =  floor $ sqrt $ fromIntegral x
  
