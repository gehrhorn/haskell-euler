genRightTriangles :: Int -> [(Int, Int, Int)] 
genRightTriangles p = [ (a,b,c) | a <- [1..p], b <- [a..p], c <- [b..p], a+b+c == p, a^2 + b^2 == c^2]

main = do
  let tris = [genRightTriangles i | i <- [4,6..1000]] 
  print  ( take 50 tris )
