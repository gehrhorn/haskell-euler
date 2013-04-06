triangle :: (Integral x) => x -> x 
triangle x = x * ( x + 1 ) `div` 2

pentagon :: (Integral x) => x -> x
pentagon x = x * (3*x - 1) `div` 2


