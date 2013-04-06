
--rightRotate :: (Integral x) => x -> x
--rightRotate x =
--
digs :: (Integral x) => x -> [ x ]
digs 0 = [] 
digs x = mod x 10:(digs $ div x 10)

rightRotate :: (Integral x) => [x] -> [x]
rightRotate [] = []
rightRotate (x:xs) = xs ++ [ x ]

digsToInt :: (Integral x) => [x] -> x
digsToInt x = foldr (\a b -> a + b*10) 0 x

rotate :: (Integral x) => x -> x
rotate = digsToInt . rightRotate . digs

processList :: (Integral x) => x -> [x]
processList n = [x | x <- [10..n], mod x 10 /= 0, rotate x > x, mod (rotate x) x == 0

