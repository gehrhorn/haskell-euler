factors :: Int -> [Int]
factors n = [x | x <- [1..n], mod n x == 0]

prime :: Int -> Bool
prime n = factors n == [1,n]

genCircles :: String -> [String] 
genCircles [] = []
genCircles x = take (length x) (iterate (rotate) x)

int2string :: Integer -> String
int2string x = show x

rotate :: String -> String
rotate [] = []
rotate x = tail x ++ [head x]

intList :: [String] -> [Int]
intList = map read

-- run [n | n <- [2, 3..1000000], all prime(intList (genCircls (int2stringn)))]
