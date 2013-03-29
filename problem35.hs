factors :: Int -> [Int]
factors n = [x | x <- [1..n], mod n x == 0]

prime :: Int -> Bool
prime n = factors n == [1,n]

digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (div x 10) ++ [mod x 10]

rotateDigs :: [Int] -> [Int]
rotateDigs [] = []
rotateDigs x = tail x ++ (head x):[] 
